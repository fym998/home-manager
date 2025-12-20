{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    coc = {
      enable = true;
      settings = {
        languageserver = {
          nix = {
            command = pkgs.nil;
            filetypes = [ "nix" ];
            rootPatterns = [ "flake.nix" ];
            settings = {
              nil = {
                formatting = {
                  command = [ pkgs.nixfmt ];
                };
              };
            };
          };
        };
      };
    };
  };
}
