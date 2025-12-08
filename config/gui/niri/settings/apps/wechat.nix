{
  programs.niri.settings.window-rules = [
    {
      matches = [ { app-id = "^wechat$"; } ];
      excludes = [ { title = "^Weixin$"; } ];
      open-focused = false;
    }
  ];
}
