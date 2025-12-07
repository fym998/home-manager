{ config, pkgs, ... }:
{
  programs.fuzzel = {
    enable = true;
    package = config.lib.genericLinux.nullIfEnable pkgs.fuzzel;
  };
}
