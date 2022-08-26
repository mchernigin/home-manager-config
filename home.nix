{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the paths it manages
  home = {
    username = "mchernigin";
    homeDirectory = "/Users/mchernigin";
    stateVersion = "22.05"; # Nix release that config is compatible with
  };

  # Packages that should be installed to the user profile
  home.packages = with pkgs; [
    bash # Because MacOS comes with really outdated bash
    curl
    wget
    rsync
    tmux
    htop
    gnupg # GPG to sign git commits
    ripgrep # Replacement for grep
    fd # Replacement for find
    exa # Replacement for ls
    bat # Like cat but with perks
    cmake
    delta # More elegant diff viewer
    hugo # Static site generator
    ninja
    html-tidy
    neovim
    aspell # Spell check for NeoVim
    pyright # LSP server for Python
    rnix-lsp # LSP server for Nix
    rust-analyzer # LSP server for Rust
    texlab # LSP server for LaTeX
    pandoc # Document conversion
    newsboat # RSS reader
    tealdeer # tldr implementation
    trash-cli # I hate rm
    comma # Run commands without installing
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    PYTHONSTARTUP = "$HOME/.config/python/startup";
    LESSHISTFILE = "$HOME/.config/less/lesshst";
    DIRENV_LOG_FORMAT = ""; # Find derenv option instead
  };

  home.sessionPath = [
    "$HOME/.local/scripts/"
  ];

  # Let Home Manager install and configure zsh
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh/";
    defaultKeymap = "viins";
    enableSyntaxHighlighting = true;
    shellAliases = {
      ls = "exa --group-directories-first";
      l  = "ls";
      la = "ls -ah";
      ll = "ls -lah --git";
      tree = "exa --tree";
      vim = "nvim";
      da = "direnv allow";
      dr = "direnv reload";
      "," = "comma";
    };
    history = {
      size = 10000;
      path = ".cache/zsh/history";
      ignoreSpace = true;
    };
    initExtra = (builtins.readFile ./init.zsh);
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };

  programs.nix-index = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
