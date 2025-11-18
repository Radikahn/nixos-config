{ config, pkgs, ... }:

{
  users.users.radikahn = {
    isNormalUser = true;
    description = "radikahn";
    extraGroups = [ "networkmanager" "wheel" "docker" "video" "audio" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
