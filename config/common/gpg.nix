{
  services.gpg-agent = {
    enable = true;
    extraConfig = ''
      allow-loopback-pinentry
    '';
  };
  programs.gpg.enable = true;
}
