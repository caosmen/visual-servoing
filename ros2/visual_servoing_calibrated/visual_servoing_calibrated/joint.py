import numpy as np

from sensor_msgs.msg import JointState


class VP6242JointStates:
    """
    Class for the VP6242 joint states.

    Args:
        node (rclpy.node.Node): The ROS node.

    Attributes:
        node (rclpy.node.Node): The ROS node.
        joint_states (sensor_msgs.msg.JointState): The joint states of the robot arm.

    Methods:
        init_subscriber: Initialize the subscriber for the joint states topic.
        callback: The callback function for the joint states subscriber.
    """

    def __init__(self, node):
        self.node = node
        self.joint_states = JointState()

    def init_subscriber(self, topic):
        """
        Initialize the subscriber for the joint states topic.

        Args:
            topic (str): The topic name.
        """

        self.node.create_subscription(JointState, topic, self.callback, 10)

    def callback(self, msg):
        """
        The callback function for the joint states subscriber.

        Args:
            msg (sensor_msgs.msg.JointState): The joint states message.
        """

        self.joint_states = msg


class VP6242JointController:
    """
    Class for the VP6242 joint controller.

    Args:
        node (rclpy.node.Node): The ROS node.
        dh_params (np.ndarray): The DH parameters of the robot arm.

    Attributes:
        node (rclpy.node.Node): The ROS node.
        dh_params (np.ndarray): The DH parameters of the robot arm.

    Methods:
        compute_image_jacobian: Compute the image Jacobian.
        compute_jacobian_feature: Compute the Jacobian matrix for a point.
        compute_joint_velocities: Compute the joint velocities.
        create_joint_configuration: Create the joint configuration from velocities.
    """

    def __init__(self, node, dh_params):
        self.node = node
        self.dh_params = dh_params

    def compute_image_jacobian(self, features, depth_features):
        """
        Compute the image Jacobian for the given features and depth features.

        Args:
            features (np.ndarray): The image features.
            depth_features (np.ndarray): The depth features.

        Returns:
            np.ndarray: The image Jacobian.
        """

        red_x, red_y, green_x, green_y, blue_x, blue_y = features
        red_z, green_z, blue_z = depth_features

        red_matrix = self.compute_jacobian_feature(red_x, red_y, red_z)
        green_matrix = self.compute_jacobian_feature(green_x, green_y, green_z)
        blue_matrix = self.compute_jacobian_feature(blue_x, blue_y, blue_z)

        image_jacobian = np.vstack((red_matrix, green_matrix, blue_matrix))

        return image_jacobian

    def compute_jacobian_feature(self, u, v, z):
        """
        Compute the Jacobian matrix for a point.

        Args:
            u (float): The x-coordinate.
            v (float): The y-coordinate.
            z (float): The z-coordinate.

        Returns:
            np.ndarray: The Jacobian matrix.
        """

        focal_length_p = self.node.focal_length / self.node.sensor_pixel_size

        jacobian_matrix = np.array([
            [-focal_length_p / z, 0, u / z, u * v / focal_length_p, -(focal_length_p + u ** 2 / focal_length_p), v],
            [0, -focal_length_p / z, v / z, focal_length_p + v ** 2 / focal_length_p, -u * v / focal_length_p, -u]
        ])

        return jacobian_matrix

    def compute_robot_jacobian(self, joint_angles):
        """
        Compute the robot Jacobian for the given joint angles and end effector rotation.

        Args:
            joint_angles (np.ndarray): The joint angles.

        Returns:
            np.ndarray: The robot Jacobian.
            np.ndarray: The end effector transformation matrix.
        """

        T = np.eye(4)
        transformations = []

        for i, params in enumerate(self.dh_params):
            theta = joint_angles[i] + params[0]
            d = params[1]
            a = params[2]
            alpha = params[3]

            T_i = np.array([
                [np.cos(theta), -np.sin(theta) * np.cos(alpha), np.sin(theta) * np.sin(alpha), a * np.cos(theta)],
                [np.sin(theta), np.cos(theta) * np.cos(alpha), -np.cos(theta) * np.sin(alpha), a * np.sin(theta)],
                [0, np.sin(alpha), np.cos(alpha), d],
                [0, 0, 0, 1]
            ])
            T = np.dot(T, T_i)

            transformations.append(T)

        T_end_effector = transformations[-1]

        p_end_effector = T_end_effector[:3, 3]

        J = np.zeros((6, 6))

        J[:3, 0] = np.cross(np.array([0, 0, 1]), p_end_effector)
        J[3:, 0] = np.array([0, 0, 1])

        for i in range(1, 6):
            T_i = transformations[i - 1]

            z_i = T_i[:3, 2]
            p_i = T_i[:3, 3]

            Jp = np.cross(z_i, p_end_effector - p_i)
            Jo = z_i

            J[:3, i] = Jp
            J[3:, i] = Jo

        return J, T_end_effector

    def create_joint_configuration(self, joint_values, type='position'):
        """
        Create the joint configuration from the given joints values.

        Args:
            joint_values (np.ndarray): The joint values.
            type (string): The joint configuration type, either 'position' or 'velocity'.

        Returns:
            list[dict]: The joint configuration.
        """

        if type not in ['position', 'velocity']:
            raise ValueError('Invalid joint configuration type.')

        configuration = [
            {'name': 'Link1', type: joint_values[0]},
            {'name': 'Link2', type: joint_values[1]},
            {'name': 'Link3', type: joint_values[2]},
            {'name': 'Link4', type: joint_values[3]},
            {'name': 'Link5', type: joint_values[4]},
            {'name': 'EndEffector', type: joint_values[5]}
        ]

        return configuration
