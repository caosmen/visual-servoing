using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

using RainbowArt.CleanFlatUI;
using Unity.Robotics.ROSTCPConnector;

public class SettingsModalController : MonoBehaviour
{
    [Header("Settings Modal")]
    [SerializeField] private GameObject SettingsModal;

    [Header("ROS")]
    public ROSConnection ROSConnection;

    [Header("UI References")]
    [SerializeField] private DropdownTransition ProtocolDropdown;
    [SerializeField] private TMP_InputField FrequencyInput;
    [SerializeField] private TMP_InputField RosIPInput;
    [SerializeField] private TMP_InputField RosPortInput;

    [Header("Protocol Options")]
    [SerializeField] private List<TMP_Dropdown.OptionData> ProtocolOptions;

    [Header("Settings Buttons")]
    [SerializeField] private Button ConfirmButton;
    [SerializeField] private Button CancelButton;
    [SerializeField] private Button CloseButton;


    private const string ProtocolPrefKey = "ConfigProtocol";
    private const string FrequencyPrefKey = "ConfigFrequency";
    private const string RosIPPrefKey = "ConfigRosIP";
    private const string ROSPortPrefKey = "ConfigROSPort";

    private const int ProtocolDefault = 0;
    private const string FrequencyDefault = "0.1";
    private const string RosIPDefault = "127.0.0.1";
    private const string ROSPortDefault = "9090";

    private int TempProtocol;
    private string TempFrequency;
    private string TempRosIP;
    private string TempROSPort;

    private void Awake()
    {
        if (ROSConnection == null)
        {
            ROSConnection = FindObjectOfType<ROSConnection>();
            if (ROSConnection == null)
            {
                Debug.LogError("ROSConnection is not assigned and no instance found in the scene.");
                return;
            }
        }

        LoadSettings();
        ApplySettingsToROSConnection();
    }

    private void Start()
    {
        if (SettingsModal == null)
        {
            Debug.LogWarning("SettingsModal is not assigned.");
            return;
        }

        ConfirmButton?.onClick.AddListener(OnConfirm);
        CancelButton?.onClick.AddListener(OnCancel);
        CloseButton?.onClick.AddListener(OnCancel);

        SetupProtocolDropdown();
    }

    private void SetupProtocolDropdown()
    {
        if (ProtocolDropdown == null)
        {
            Debug.LogWarning("ProtocolDropdown is not assigned.");
            return;
        }

        ProtocolDropdown.options.Clear();

        ProtocolDropdown.AddOptions(ProtocolOptions);

        int savedProtocolIndex = PlayerPrefs.GetInt(ProtocolPrefKey, ProtocolDefault);
        ProtocolDropdown.value = (savedProtocolIndex >= 0 && savedProtocolIndex < ProtocolDropdown.options.Count)
                                   ? savedProtocolIndex
                                   : ProtocolDefault;

        ProtocolDropdown.captionText.text = ProtocolOptions[ProtocolDropdown.value].text;
        if (ProtocolOptions[ProtocolDropdown.value].image != null)
        {
            ProtocolDropdown.captionImage.sprite = ProtocolOptions[ProtocolDropdown.value].image;
        }

        ProtocolDropdown.onValueChanged.AddListener(OnProtocolDropdownValueChanged);
    }

    private void OnProtocolDropdownValueChanged(int index)
    {
        ProtocolDropdown.captionText.text = ProtocolOptions[index].text;
        if (ProtocolOptions[index].image != null)
        {
            ProtocolDropdown.captionImage.sprite = ProtocolOptions[index].image;
        }
    }

    private void LoadSettings()
    {
        TempFrequency = PlayerPrefs.GetString(FrequencyPrefKey, FrequencyDefault);
        TempRosIP = PlayerPrefs.GetString(RosIPPrefKey, RosIPDefault);
        TempROSPort = PlayerPrefs.GetString(ROSPortPrefKey, ROSPortDefault);
        TempProtocol = PlayerPrefs.GetInt(ProtocolPrefKey, ProtocolDefault);

        FrequencyInput.text = TempFrequency;
        RosIPInput.text = TempRosIP;
        RosPortInput.text = TempROSPort;

        if (ProtocolDropdown != null)
        {
            ProtocolDropdown.value = TempProtocol;
            ProtocolDropdown.captionText.text = ProtocolOptions[ProtocolDropdown.value].text;
            if (ProtocolOptions[ProtocolDropdown.value].image != null)
            {
                ProtocolDropdown.captionImage.sprite = ProtocolOptions[ProtocolDropdown.value].image;
            }
        }
    }

    private void ApplySettingsToROSConnection()
    {
        if (ROSConnection == null)
        {
            Debug.LogError("Cannot apply settings because ROSConnection is not assigned.");
            return;
        }

        int TempROSPortInt;

        if (!int.TryParse(TempROSPort, out TempROSPortInt))
        {
            Debug.LogError("Invalid ROS Port saved in PlayerPrefs. Using default port 9090.");
            TempROSPortInt = 9090;
        }

        ROSConnection.RosIPAddress = TempRosIP;
        ROSConnection.RosPort = TempROSPortInt;
    }

    private void SaveSettings()
    {
        PlayerPrefs.SetInt(ProtocolPrefKey, ProtocolDropdown.value);

        PlayerPrefs.SetString(FrequencyPrefKey, FrequencyInput.text);
        PlayerPrefs.SetString(RosIPPrefKey, RosIPInput.text);
        PlayerPrefs.SetString(ROSPortPrefKey, RosPortInput.text);
        PlayerPrefs.Save();

        TempProtocol = ProtocolDropdown.value;
        TempFrequency = FrequencyInput.text;
        TempRosIP = RosIPInput.text;
        TempROSPort = RosPortInput.text;
    }

    private void OnConfirm()
    {
        if (ValidateFields())
        {
            SaveSettings();

            if (ROSConnection != null)
            {
                string newIP = RosIPInput.text;
                if (!int.TryParse(RosPortInput.text, out int newPort))
                {
                    Debug.LogError("Invalid ROS port.");
                    return;
                }

                ROSConnection.Disconnect();
                ROSConnection.Connect(newIP, newPort);
            }
            else
            {
                Debug.LogError("ROSConnection is not assigned.");
            }

            CloseModal();
        }
        else
        {
            Debug.LogWarning("Validation failed. Please check the entered fields.");
        }
    }

    private void OnCancel()
    {
        ProtocolDropdown.value = TempProtocol;
        FrequencyInput.text = TempFrequency;
        RosIPInput.text = TempRosIP;
        RosPortInput.text = TempROSPort;

        CloseModal();
    }

    public void ShowSettingsModal()
    {
        LoadSettings();
        SettingsModal.SetActive(true);
    }

    private void CloseModal()
    {
        SettingsModal.SetActive(false);
    }

    private bool ValidateFields()
    {
        if (!float.TryParse(FrequencyInput.text, out float frequency) || frequency <= 0)
        {
            Debug.LogError("Invalid frequency.");
            return false;
        }

        if (!ValidateIP(RosIPInput.text))
        {
            Debug.LogError("Invalid ROS IP address.");
            return false;
        }

        if (!int.TryParse(RosPortInput.text, out int rosPort) || rosPort <= 0 || rosPort > 65535)
        {
            Debug.LogError("Invalid ROS port.");
            return false;
        }

        return true;
    }

    private bool ValidateIP(string ip)
    {
        string[] parts = ip.Split('.');
        if (parts.Length != 4) return false;

        foreach (string part in parts)
        {
            if (!int.TryParse(part, out int number) || number < 0 || number > 255)
                return false;
        }

        return true;
    }
}
