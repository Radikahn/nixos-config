{ config, pkgs, ... }:

{
  # X11 windowing system
  services.xserver = {
    enable = true;
    
    # Keyboard layout
    xkb = {
      layout = "us";
      variant = "";
    };
  };
  
  # KDE Plasma 6 Desktop Environment
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  
  # Sound with pipewire (pulseaudio disabled)
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;  # Uncomment if needed
  };
  
  # Printing
  services.printing.enable = true;
  
  # USB utilities
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  
  # Flatpak
  services.flatpak.enable = true;
  
  # SSH (currently disabled in your config)
  # services.openssh.enable = true;
}
