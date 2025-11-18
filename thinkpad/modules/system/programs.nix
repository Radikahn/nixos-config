{ config, pkgs, ... }:

{
  # Firefox
  programs.firefox.enable = true;
  
  # Hyprland
  programs.hyprland.enable = true;


  #nix ld for binaries
  programs.nix-ld.enable = true;
}
