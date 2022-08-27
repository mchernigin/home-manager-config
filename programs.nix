{ pkgs }:

{
  # Let Home Manager install and manage itself
  home-manager.enable = true;

  zsh = import ./zsh.nix { inherit pkgs; };
  git = import ./git.nix { inherit pkgs; };

  exa = {
    enable = true;
    enableAliases = true;
  };

  direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };

  nix-index = {
    enable = true;
    enableZshIntegration = true;
  };

  fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  tealdeer = {
    enable = true;
    settings = {
      display.compact = true;
      updates.auto_update = true;
    };
  };
}
