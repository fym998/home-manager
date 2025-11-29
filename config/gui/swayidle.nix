{ pkgs, config, ... }:
{
  services.swayidle = {
    enable = true;
    package = config.lib.genericLinux.wrapIfEnabled pkgs.swayidle "swayidle";
    timeouts = [
      {
        timeout = 900;
        command = "qs -c noctalia-shell ipc call lockScreen lock";
      }
      {
        timeout = 1800;
        command = "niri msg action power-off-monitors";
      }
    ];
    events = [
      {
        event = "before-sleep";
        command = "qs -c noctalia-shell ipc call lockScreen lock";
      }
    ];
  };
}
