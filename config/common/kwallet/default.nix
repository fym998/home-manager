{
  config,
  pkgs,
  lib,
  localLib,
  ...
}:
let
  enable = true;
in
lib.mkIf enable {
  home.packages = builtins.attrValues {
    inherit (pkgs.kdePackages) ksshaskpass kwallet kwalletmanager;
  };
  services.gpg-agent.pinentry.package = pkgs.pinentry-qt;
  home.sessionVariables = rec {
    SSH_ASKPASS = lib.getExe pkgs.kdePackages.ksshaskpass;
    SSH_ASKPASS_REQUIRE = "prefer";

    GIT_ASKPASS = SSH_ASKPASS;
  };
  xdg.configFile."kwalletrc".source = localLib.mkSymlinkToSource ./kwalletrc;
}
