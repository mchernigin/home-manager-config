{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it manages
  home = {
    username = "mchernigin";
    homeDirectory = "/Users/mchernigin";
    stateVersion = "22.05"; # Nix release that config is compatible with
  };

  home.sessionVariables = {
    PYTHONSTARTUP = "$HOME/.config/python/startup";
    LESSHISTFILE = "$HOME/.config/less/lesshst";
    DIRENV_LOG_FORMAT = ""; # Find derenv option instead
  };

  home.sessionPath = [
    "$HOME/.local/scripts/"
  ];

  # Packages are not managed by Home Manager
  home.packages = import ./packages.nix { inherit pkgs; };

  # Programs are managed by Home Manager
  programs = import ./programs.nix { inherit pkgs; };
}
