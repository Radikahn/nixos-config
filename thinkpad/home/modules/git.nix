{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "radikahn";
    userEmail = "radikahn@gmail.com";
    
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      ci = "commit";
      unstage = "reset HEAD --";
      last = "log -1 HEAD";
      visual = "log --graph --oneline --all --decorate";
      lg = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
    };
    
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      core.editor = "nvim";
      color.ui = true;
      push.autoSetupRemote = true;
    };
    
    delta = {
      enable = true;
      options = {
        navigate = true;
        line-numbers = true;
        side-by-side = true;
        syntax-theme = "Dracula";
      };
    };
  };
  
  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "ssh";
      editor = "nvim";
    };
  };
}
