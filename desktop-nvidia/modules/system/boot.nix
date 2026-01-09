{ config, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.supportedFilesystems = [ "ntfs" ];


  #enable intel virutalisation
  boot.kernelParams = [ "intel_iommu=on" ];
}
