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
      pkgs.writeShellScriptBin "${builtins.head (lib.splitString " " cmd)}-nix-wrapper" ''
        ${config.lib.shell.export "PATH" (config.lib.shell.prependToVar ":" "PATH" [ "/usr/bin" ])}
        exec ${cmd} $@
      '';
  lib.genericLinux.getCmd =
    pkg: cmd: if !config.targets.genericLinux.enable then "${pkg}/bin/${cmd}" else "/usr/bin/${cmd}";
}
