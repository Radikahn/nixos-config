{ config, pkgs, inputs, ... }:

{
  imports = [
    # Modular system configurations
    ./modules/system/boot.nix
    ./modules/system/networking.nix
    ./modules/system/users.nix
    ./modules/system/environment.nix
    ./modules/system/services.nix
    ./modules/system/programs.nix
  ];

  fileSystems."/home/radikahn/games" = {
    device = "/dev/disk/by-uuid/e2a4781d9-53da-487a-9434-c205a1738fd2";
    fsType = "ext4";
    options = [ "defaults" "nofail" "x-systemd.automount" ];
  };

  systemd.tmpfiles.rules = [
   "d /home/radikahn/games 0755 radikahn users -"
  ];

  # System-wide configuration
  system.stateVersion = "25.05";
  
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;


  #virtualisation settings
  virtualisation = {
    docker.enable = true;
    libvirtd = {
      enable = true;
    };
  };



  users.users.radikahn.extraGroups = [ "libvirtd" ]; # Add user to libvirt group


}
