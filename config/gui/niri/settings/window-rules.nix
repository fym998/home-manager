{
  programs.niri.settings.window-rules = [
    # Work around WezTerm's initial configure bug
    {
      matches = [
        {
          app-id = "^org\\.wezfurlong\\.wezterm$";
        }
      ];
      default-column-width = { };
    }

    # Open Firefox PiP as floating
    {
      matches = [
        {
          app-id = "firefox$";
          title = "^Picture-in-Picture$";
        }
        {
          app-id = "firefox$";
          title = "^画中画$";
        }
      ];
      open-floating = true;
    }

    # Example: block password managers from screen capture
    {
      matches = [
        { app-id = "^org\\.keepassxc\\.KeePassXC$"; }
        { app-id = "^org\\.gnome\\.World\\.Secrets$"; }
      ];
      block-out-from = "screen-capture";
      # block-out-from = "screencast";
    }

    {
      matches = [
        { app-id = "Minecraft"; }
        { app-id = "code"; }
        { app-id = "firefox"; }
      ];
      excludes = [
        {
          # firefox master password / PiP
          app-id = "firefox";
          is-floating = true;
        }
      ];
      open-maximized = true;
    }
  ];
}
