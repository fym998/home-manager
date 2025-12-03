{ config, ... }:
{
  programs.niri.settings.window-rules = [
    {
      matches = [
        { app-id = "^code$"; }
      ];
      open-maximized = true;
    }
  ];
  programs.niri.settings.binds = with config.lib.niri.actions; {
    "Mod+C" = {
      action = spawn "code";
      hotkey-overlay.title = "Run an Application: Visual Studio Code";
    };
  };
}
