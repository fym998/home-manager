{
  pkgs,
  localLib,
  lib,
  ...
}:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        kdePackages.fcitx5-chinese-addons
        fcitx5-mozc
        fcitx5-pinyin-moegirl
        fcitx5-pinyin-minecraft
        fcitx5-pinyin-zhwiki
      ];
      settings = {
        globalOptions = import ./config.nix;
        inputMethod = import ./profile.nix;
        addons = lib.pipe ./conf [
          localLib.lsSubmodule
          (map (
            file:
            lib.nameValuePair (lib.pipe file [
              toString
              (lib.removePrefix ((toString ./conf) + "/"))
              (lib.removeSuffix ".nix")
            ]) (import file)
          ))
          builtins.listToAttrs
        ];
      };
    };
  };
}
