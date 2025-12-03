{
  programs.niri.settings.window-rules = [
    {
      matches = [
        { app-id = "^org\\.keepassxc\\.KeePassXC$"; }
        { app-id = "^org\\.kde\\.kwalletmanager$"; }
        { app-id = "^org\\.gnome\\.World\\.Secrets$"; }
        { app-id = "^org\\.gnome\\.seahorse\\.Application$"; }
      ];
      block-out-from = "screen-capture";
      # block-out-from = "screencast";
    }
  ];
}
