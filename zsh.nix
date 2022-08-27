{ pkgs }:

{
  enable = true;
  dotDir = ".config/zsh/";
  defaultKeymap = "viins";
  enableSyntaxHighlighting = true;
  shellAliases = {
    n   = "nnn -e";
    vim = "nvim";
    da  = "direnv allow";
    dr  = "direnv reload";
    hme = "$EDITOR $HOME/.config/nixpkgs";
    hms = "home-manager switch && source $HOME/.config/zsh/.zshrc";
    hmp = "home-manager packages";
    hmg = "home-manager generations";
    "," = "comma";
  };
  history = {
    size = 10000;
    path = ".cache/zsh/history";
    ignoreSpace = true;
  };
  initExtra = (builtins.readFile ./init.zsh);
}
