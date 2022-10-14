
{ pkgs }:

let
  general = with pkgs; [
    wget
    curl
    rsync
    aspell
    bash
    rlwrap
    ripgrep
    fd
    htop
    neofetch
    gnupg
    newsboat
    tmux
    ncdu
    texlive.combined.scheme-full
  ];

  devTools = with pkgs; [
    bison
    flex
    ninja
    cmake
    hugo
  ];

  lspSevers = with pkgs; [
    pyright
    rnix-lsp
    rust-analyzer
    texlab
  ];
in
general ++ devTools ++ lspSevers

