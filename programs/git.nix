{ pkgs }:

{
  enable = true;
  userName = "Michael Chernigin";
  userEmail = "michaelchernigin@gmail.com";

  delta = {
    enable = true;
    options.line-numbers = true;
  };

  ignores = [
    ".DS_Store"
    ".cache/"
    ".direnv/"
    ".vscode/"
    ".idea/"
  ];

  aliases = {
    c = "commit";
    d = "diff";
    ds = "diff --staged";
    s = "status";
    ch = "checkout";
    br = "branch";
    l = "log --graph --pretty='%Cred%h%Creset %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
  };

  extraConfig = {
    core = {
      editor = "nvim";
      whitespace = "trailing-space,space-before-tab";
    };
    commit.gpgsign = "true";
    pull.rebase = "false";
    push.autoSetupRemote = true;
    init.defaultBranch = "main";
  };
}
