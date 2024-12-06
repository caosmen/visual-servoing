using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

using RainbowArt.CleanFlatUI;
using Enviro;
using Unity.Robotics.ROSTCPConnector;
using System.Collections;
using UnityEngine.Rendering.HighDefinition;
using UnityEngine.Rendering;

public class UIController : MonoBehaviour
{
    [Header("Sidebar Settings")]
    public Selector MapSelector;
    public DropdownTransition WeatherDropdown;
    public DropdownTransition TimeDropdown;
    public DropdownTransition ObstaclesDropdown;
    public DropdownTransition WhiteNoiseDropdown;

    [Header("Sidebar Options")]
    public List<TMP_Dropdown.OptionData> WeatherOptions;
    public List<TMP_Dropdown.OptionData> TimeOptions;
    public List<TMP_Dropdown.OptionData> ObstaclesOptions;
    public List<TMP_Dropdown.OptionData> WhiteNoiseOptions;

    [Header("ROS")]
    public ROSConnection ROSConnection;

    [Header("ROS UI")]
    public TextMeshProUGUI RosConnectionInfoText;

    [Header("GameObjects")]
    public GameObject Obstacles;

    [Header("White Noise")]
    public Volume WhiteNoiseVolume;

    private readonly string[] MapSceneNames = { "Digital", "Forest" };

    private Coroutine CurrentTimeChangeCoroutine;

    void Start()
    {
        if (MapSelector != null)
        {
            MapSelector.ClearOptions();
            List<string> mapOptions = new List<string> { "Digital", "Forest" };
            MapSelector.AddOptions(mapOptions);

            int savedMapIndex = PlayerPrefs.GetInt("MapIndex", 0);
            MapSelector.StartIndex = savedMapIndex;
            MapSelector.OnValueChanged.AddListener(OnMapSelectorValueChanged);

            OnMapSelectorValueChanged(savedMapIndex);
        }

        if (WeatherDropdown != null)
        {
            WeatherDropdown.options.Clear();
            WeatherDropdown.AddOptions(WeatherOptions);

            int savedWeatherIndex = PlayerPrefs.GetInt("WeatherIndex", 0);
            WeatherDropdown.value = savedWeatherIndex;
            WeatherDropdown.captionText.text = WeatherOptions[savedWeatherIndex].text;
            WeatherDropdown.captionImage.sprite = WeatherOptions[savedWeatherIndex].image;
            WeatherDropdown.onValueChanged.AddListener(OnWeatherDropdownValueChanged);

            OnWeatherDropdownValueChanged(savedWeatherIndex);
        }

        if (TimeDropdown != null)
        {
            TimeDropdown.options.Clear();
            TimeDropdown.AddOptions(TimeOptions);

            int savedTimeIndex = PlayerPrefs.GetInt("TimeIndex", 0);
            TimeDropdown.value = savedTimeIndex;
            TimeDropdown.captionText.text = TimeOptions[savedTimeIndex].text;
            TimeDropdown.captionImage.sprite = TimeOptions[savedTimeIndex].image;
            TimeDropdown.onValueChanged.AddListener(OnTimeDropdownValueChanged);

            OnTimeDropdownValueChanged(savedTimeIndex);
        }

        if (ObstaclesDropdown != null)
        {
            ObstaclesDropdown.options.Clear();
            ObstaclesDropdown.AddOptions(ObstaclesOptions);

            int savedObstaclesIndex = PlayerPrefs.GetInt("ObstaclesIndex", 0);
            ObstaclesDropdown.value = savedObstaclesIndex;
            ObstaclesDropdown.captionText.text = ObstaclesOptions[savedObstaclesIndex].text;
            ObstaclesDropdown.captionImage.sprite = ObstaclesOptions[savedObstaclesIndex].image;
            ObstaclesDropdown.onValueChanged.AddListener(OnObstaclesDropdownValueChanged);

            OnObstaclesDropdownValueChanged(savedObstaclesIndex);
        }

        if (WhiteNoiseDropdown != null)
        {
            WhiteNoiseDropdown.options.Clear();
            WhiteNoiseDropdown.AddOptions(WhiteNoiseOptions);

            int savedWhiteNoiseIndex = PlayerPrefs.GetInt("WhiteNoiseIndex", 0);
            WhiteNoiseDropdown.value = savedWhiteNoiseIndex;
            WhiteNoiseDropdown.captionText.text = WhiteNoiseOptions[savedWhiteNoiseIndex].text;
            WhiteNoiseDropdown.captionImage.sprite = WhiteNoiseOptions[savedWhiteNoiseIndex].image;
            WhiteNoiseDropdown.onValueChanged.AddListener(OnWhiteNoiseDropdownValueChanged);

            OnWhiteNoiseDropdownValueChanged(savedWhiteNoiseIndex);
        }

        if (ROSConnection == null)
        {
            ROSConnection = FindObjectOfType<ROSConnection>();
            if (ROSConnection == null)
            {
                Debug.LogError("ROSConnection is not assigned and no instance found in the scene.");
            }
            else
            {
                ApplySavedROSSettings();
            }
        }
        else
        {
            ApplySavedROSSettings();
        }
    }

    void Update()
    {
        if (RosConnectionInfoText != null)
        {
            ROSConnection rosConnection = ROSConnection.GetOrCreateInstance();
            if (rosConnection != null)
            {
                string ip = rosConnection.RosIPAddress;
                int port = rosConnection.RosPort;

                string connectionStatus;

                if (rosConnection.HasConnectionError)
                {
                    connectionStatus = $"ROS Connection Error! Attempting to connect to {ip}:{port}. Please verify ROS IP and Port.";
                }
                else if (!rosConnection.HasConnectionThread)
                {
                    connectionStatus = $"ROS Disconnected. Attempting to connect to {ip}:{port}.";
                }
                else
                {
                    connectionStatus = $"ROS Connected Successfully to {ip}:{port}.";
                }

                RosConnectionInfoText.text = connectionStatus;
            }
            else
            {
                RosConnectionInfoText.text = "ROS Connection: Not Initialized.";
            }
        }
    }

    private void ApplySavedROSSettings()
    {
        if (ROSConnection == null)
        {
            Debug.LogError("Cannot apply ROS settings because ROSConnection is not assigned.");
            return;
        }

        string savedIP = PlayerPrefs.GetString("ConfigRosIP", "127.0.0.1");
        string savedPortStr = PlayerPrefs.GetString("ConfigROSPort", "9090");
        int savedPort;

        if (!int.TryParse(savedPortStr, out savedPort))
        {
            Debug.LogError("Invalid ROS Port saved in PlayerPrefs. Using default port 9090.");
            savedPort = 9090;
        }

        ROSConnection.RosIPAddress = savedIP;
        ROSConnection.RosPort = savedPort;

        if (!ROSConnection.HasConnectionThread)
        {
            ROSConnection.Connect(savedIP, savedPort);
        }
    }

    void OnMapSelectorValueChanged(int index)
    {
        string selectedMap = MapSelector.options[index].optionText;

        PlayerPrefs.SetInt("MapIndex", index);
        PlayerPrefs.Save();

        if (index >= 0 && index < MapSceneNames.Length)
        {
            string sceneName = MapSceneNames[index];
            if (SceneManager.GetActiveScene().name != sceneName)
            {
                SceneManager.LoadScene(sceneName);
            }
        }
        else
        {
            Debug.LogError("Invalid map index selected.");
        }
    }

    void OnWeatherDropdownValueChanged(int index)
    {
        string selectedWeather = WeatherOptions[index].text;
        WeatherDropdown.captionText.text = selectedWeather;
        WeatherDropdown.captionImage.sprite = WeatherOptions[index].image;

        PlayerPrefs.SetInt("WeatherIndex", index);
        PlayerPrefs.Save();

        ChangeWeather(index);
    }

    void OnTimeDropdownValueChanged(int index)
    {
        string selectedTime = TimeOptions[index].text;
        TimeDropdown.captionText.text = selectedTime;
        TimeDropdown.captionImage.sprite = TimeOptions[index].image;

        PlayerPrefs.SetInt("TimeIndex", index);
        PlayerPrefs.Save();

        ChangeTime(index);
    }

    void OnObstaclesDropdownValueChanged(int index)
    {
        string obstaclesEnabled = ObstaclesOptions[index].text;
        ObstaclesDropdown.captionText.text = obstaclesEnabled;
        ObstaclesDropdown.captionImage.sprite = ObstaclesOptions[index].image;

        PlayerPrefs.SetInt("ObstaclesIndex", index);
        PlayerPrefs.Save();

        ChangeObstacles(index);
    }

    void OnWhiteNoiseDropdownValueChanged(int index)
    {
        string selectedWhiteNoise = WhiteNoiseOptions[index].text;
        WhiteNoiseDropdown.captionText.text = selectedWhiteNoise;
        WhiteNoiseDropdown.captionImage.sprite = WhiteNoiseOptions[index].image;

        PlayerPrefs.SetInt("WhiteNoiseIndex", index);
        PlayerPrefs.Save();

        ChangeWhiteNoise(index);
    }

    void ChangeWeather(int index)
    {
        if (EnviroManager.instance.Weather != null)
        {
            if (EnviroManager.instance.Weather.Settings.weatherTypes.Count > index)
            {
                EnviroManager.instance.Weather.ChangeWeather(EnviroManager.instance.Weather.Settings.weatherTypes[index]);
            }
        }
    }

    void ChangeTime(int index)
    {
        if (EnviroManager.instance.Time != null)
        {
            float targetHour = 0f;
            switch (index)
            {
                case 0:
                    targetHour = 7f;
                    break;
                case 1:
                    targetHour = 12f;
                    break;
                case 2:
                    targetHour = 18f;
                    break;
                case 3:
                    targetHour = 22f;
                    break;
                default:
                    targetHour = 12f;
                    break;
            }

            if (CurrentTimeChangeCoroutine != null)
            {
                StopCoroutine(CurrentTimeChangeCoroutine);
            }

            CurrentTimeChangeCoroutine = StartCoroutine(GraduallyChangeTime(targetHour));
        }
    }

    private IEnumerator GraduallyChangeTime(float targetHour)
    {
        float currentHour = EnviroManager.instance.Time.GetTimeOfDay();
        float step = (targetHour > currentHour) ? 0.1f : -0.1f;

        while (Mathf.Abs(currentHour - targetHour) > 0.1f)
        {
            currentHour += step;
            EnviroManager.instance.Time.SetTimeOfDay(currentHour);
            yield return new WaitForSeconds(0.05f);
        }

        EnviroManager.instance.Time.SetTimeOfDay(targetHour);

        CurrentTimeChangeCoroutine = null;
    }

    void ChangeObstacles(int index)
    {
        if (Obstacles != null)
        {
            bool enableObstacles = index == 0;
            Obstacles.SetActive(enableObstacles);
        }
        else
        {
            Debug.LogWarning("Obstacles GameObject is not assigned.");
        }
    }

    void ChangeWhiteNoise(int index)
    {
        FilmGrain filmGrain = WhiteNoiseVolume.profile.TryGet<FilmGrain>(out var FilmGrainWhiteNoise) ? FilmGrainWhiteNoise : null;

        if (filmGrain == null)
        {
            Debug.LogWarning("FilmGrainWhiteNoise is not assigned.");
            return;
        }

        if (FilmGrainWhiteNoise != null)
        {
            float targetIntensity = 0f;
            switch (index)
            {
                case 0:
                    targetIntensity = 0f;
                    break;
                case 1:
                    targetIntensity = 0.1f;
                    break;
                case 2:
                    targetIntensity = 0.2f;
                    break;
                case 3:
                    targetIntensity = 0.50f;
                    break;
                case 4:
                    targetIntensity = 1f;
                    break;
                default:
                    targetIntensity = 0f;
                    break;
            }

            FilmGrainWhiteNoise.intensity.Override(targetIntensity);
        }
        else
        {
            Debug.LogWarning("FilmGrainWhiteNoise is not assigned.");
        }
    }

    public void ToggleFullscreen()
    {
        if (Screen.fullScreen)
        {
            Screen.SetResolution(1280, 720, false);
        }
        else
        {
            Resolution currentResolution = Screen.currentResolution;
            Screen.SetResolution(currentResolution.width, currentResolution.height, true);
        }
    }


    public void QuitApp()
    {
        Application.Quit();
    }
}
