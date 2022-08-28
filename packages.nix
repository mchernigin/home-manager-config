{ pkgs }:

let
  general = with pkgs; [
    bash
    curl
    wget
    rsync
    tmux
    htop
    gnupg
    ripgrep
    fd
    bat
    ncdu
    neovim
    aspell
    pandoc
    newsboat
    comma
    trash-cli # I hate rm
  ];

  devTools = with pkgs; [
    cmake
    hugo
    ninja
    html-tidy
  ];

  lspSevers = with pkgs; [
    pyright
    rnix-lsp
    rust-analyzer
    texlab
  ];
in
general ++ devTools ++ lspSevers

