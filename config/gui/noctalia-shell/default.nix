{
  inputs,
  config,
  pkgs,
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
    package =
      config.lib.genericLinux.wrapIfEnabled inputs.noctalia.packages.${pkgs.stdenvNoCC.system}.default
        "qs -c noctalia-shell";
    systemd.enable = true;
    settings = localLib.mkSymlinkToSource ./settings.json;
  };
}
