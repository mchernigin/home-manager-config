{ config, pkgs, ... }:

let
  username = "mchernigin";
  homeDirectory = "/Users/${username}";
  configHome = "${homeDirectory}/.config";
in
{
  home = {
    inherit username homeDirectory;
    stateVersion = "22.05";

    sessionVariables = {
      PYTHONSTARTUP = "${configHome}/python/startup";
      LESSHISTFILE = "${configHome}/less/lesshst";
      DIRENV_LOG_FORMAT = "";
    };

    sessionPath = [
      "${homeDirectory}/.local/scripts/"
      "/usr/local/smlnj/bin"
    ];

    # Packages are not managed by Home Manager
    packages = import ./packages.nix { inherit pkgs; };
  };

  # Programs are managed by Home Manager
  programs = import ./programs.nix { inherit pkgs; };
}
