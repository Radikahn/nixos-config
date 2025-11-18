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

  # System-wide configuration
  system.stateVersion = "25.05";
  
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
