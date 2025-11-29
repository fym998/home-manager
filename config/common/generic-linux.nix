{
  pkgs,
  lib,
  config,
  ...
}:
{
  targets.genericLinux.enable = true;
  lib.genericLinux.wrapIfEnabled =
    pkg: cmd:
    if !config.targets.genericLinux.enable then
      pkg
    else
      pkgs.writeShellScriptBin "${builtins.head (lib.splitString " " cmd)}-nix-wrapper" "exec ${cmd}";
}
