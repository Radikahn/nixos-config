{ config, pkgs, inputs, ... }:

{
  imports = [
    # Modular system configurations
    ./hardware-configuration.nix
    ./modules/system/networking.nix
    ./modules/system/users.nix
    ./modules/system/environment.nix
    ./modules/system/services.nix
    ./modules/system/programs.nix
  ];

  # Use the extlinux boot loader. (NixOS wants to enable GRUB by default)
  boot.loader.grub.enable = false;
  # Enables the generation of /boot/extlinux/extlinux.conf
  boot.loader.generic-extlinux-compatible.enable = true;

  fileSystems."/" = {
    device = "/dev/mmcblk1p2";
    fsType = "ext4";
  };


  # System-wide configuration
  system.stateVersion = "25.05";
  
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #enable docker service
  virtualisation.docker.enable = true;


}
