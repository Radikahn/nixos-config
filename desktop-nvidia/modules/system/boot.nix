{ config, pkgs, ... }:
{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  
  # Enable IOMMU and pass RTX 2070 Super to VFIO
  boot.kernelParams = [ 
    "intel_iommu=on"
    "iommu=pt"
    "pcie_acs_override=downstream,multifunction"
  ];
  
  # Load VFIO modules early
  boot.initrd.kernelModules = [
    "vfio_pci"
    "vfio"
    "vfio_iommu_type1"
  ];
  
  boot.extraModprobeConfig = ''
    options vfio-pci ids=10de:1e84,10de:10f8,10de:1ad8,10de:1ad9
  '';

  # Blacklist nouveau to prevent conflicts
  boot.blacklistedKernelModules = [ "nouveau" ];
}
