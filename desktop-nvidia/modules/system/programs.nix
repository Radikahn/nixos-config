{ config, pkgs, ... }:

{
  # Firefox
  programs.firefox.enable = true;
  
  # Hyprland
  programs.hyprland.enable = true;

  #nix ld for binaries
  programs.nix-ld.enable = true;


  #app image support
  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  #steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.gamescope = {
    enable = true;
  };
}
