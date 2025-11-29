{
  inputs,
  config,
  pkgsFrom,
  localLib,
  ...
}:
{
  imports = [
    inputs.noctalia.homeModules.default
    ./niri.nix
  ];
  programs.noctalia-shell = {
    enable = true;
    package = config.lib.genericLinux.wrapIfEnabled pkgsFrom.noctalia.default "qs -c noctalia-shell";
    systemd.enable = true;
    settings = localLib.mkSymlinkToSource ./settings.json;
  };
}
