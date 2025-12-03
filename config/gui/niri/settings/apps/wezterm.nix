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
  ];
}
