{
  programs.niri.settings.window-rules = [
    {
      matches = [ { app-id = "^wechat$"; } ];
      excludes = [
        { title = "^Weixin$"; }
        { title = "^Photos and Videos$"; }
      ];
      open-focused = false;
    }
  ];
}
