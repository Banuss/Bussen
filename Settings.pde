public static final String GAME_SETTINGS = "game.properties";

int PACKS = 1;
int SCREEN_NUM = 1;

void loadSettings()
{
  String gameSettingsLocation = dataPath("settings" + File.separator + GAME_SETTINGS);
  String[] settings = loadStrings(gameSettingsLocation);
  if (settings != null)
  {
    for (String setting : settings)
    {
      int separatorPos = setting.indexOf("=");
      if (separatorPos > 1)
      {
        switch (setting.substring(0, separatorPos))
        {
        case "PACKS":
          PACKS = Integer.parseInt(setting.substring(separatorPos+1));
          break;
         case "SCREEN_NUM":
          SCREEN_NUM = Integer.parseInt(setting.substring(separatorPos+1));
          break;  
        default:
          println("Unknown setting: \"" + setting + "\"");
          break;
        }
      }
    }
  }
  settings = new String[] {
    "PACKS=" + PACKS,
    "SCREEN_NUM=" + SCREEN_NUM
  };

  for (String setting : settings)
  {
    println(setting);
  }

  saveStrings(gameSettingsLocation, settings);
}
