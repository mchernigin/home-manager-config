{ pkgs }:

{
  # Let Home Manager install and manage itself
  home-manager.enable = true;

  zsh = import ./programs/zsh.nix { inherit pkgs; };
  git = import ./programs/git.nix { inherit pkgs; };
  neovim = import ./programs/neovim.nix { inherit pkgs; };

  exa = {
    enable = true;
    enableAliases = true;
  };

  direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };

  fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  bat = {
    enable = true;
    config.theme = "1337";
  };

  tealdeer = {
    enable = true;
    settings = {
      display.compact = true;
      updates.auto_update = false;
    };
  };

  starship = {
    enable = true;
    settings = {
      add_newline = true;
      package.disabled = true;
    };
  };

  autojump = {
    enable = true;
  };

  nnn = {
    enable = true;
  };
}

