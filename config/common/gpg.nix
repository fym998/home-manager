{ pkgs, ... }:
{
  services.gpg-agent = {
    enable = true;
    pinentry.package = pkgs.pinentry-gnome3;
    extraConfig = ''
      allow-loopback-pinentry
    '';
  };
  programs.gpg.enable = true;
}
