{ config, pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    settings = {
      general.import = [ "themes/noctalia.toml" ];
      window = {
        #decorations = "None";
        padding = {
          x = 10;
          y = 10;
        };
        opacity = .8;
      };
    };
  };
}
