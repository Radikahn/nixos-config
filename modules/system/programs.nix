{ config, pkgs, ... }:

{

  #nix ld for binaries
  programs.nix-ld.enable = true;


  #app image support
  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

}
