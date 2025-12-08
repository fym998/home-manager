{
  config,
  lib,
  pkgsFrom,
  ...
}:
{
  systemd.user.services.wallpaper-fetcher = {
    Service = {
      ExecStart = "${lib.getExe pkgsFrom.fym998-nur.wallpaper-fetcher} -d -i 21600 --debug";
    };
    Install = {
      WantedBy = [ config.wayland.systemd.target ];
    };
  };
}
