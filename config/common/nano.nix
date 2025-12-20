{ config, lib, ... }:
{
  programs.nano.enable = false;
  home.sessionVariables.EDITOR = lib.mkIf config.programs.nano.enable "nano";
}
