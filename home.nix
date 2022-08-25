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

    ripgrep # Replacement for grep
    fd # Replacement for find
    exa # Replacement for ls
    bat # Like cat but with perks
    nnn # Terminal file manager
    fzf
    zsh-syntax-highlighting

    cmake
    delta # More elegant diff viewer
    hugo # Static site generator
    ninja
    html-tidy

    neovim
    aspell # Spell check for NeoVim
    pyright # LSP server for Python
    rnix-ls # LSP server for Nix
    rust-analyzer # LSP server for Rust
    texlab # LSP server for LaTeX

    direnv # Auto switch nix-shell on cd
    nix-direnv # Cache for direnv
    pandoc # Document conversion
    newsboat # RSS reader
    tealdeer # tldr implementation
    trash-cli # I hate rm
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
