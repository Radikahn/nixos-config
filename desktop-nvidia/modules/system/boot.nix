{ config, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  #fix i915 drivers
  boot.kernelParams = [
     "i915.enable_dc=0"
     "i915.enable_psr=0"
     "i915.enable_fbc=0"
     "intel_idle.max_cstate=1"
     "softlockup_panic=1" #panic on softlocks
  ];
}
