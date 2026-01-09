{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixtop";
    networkmanager.enable = true;
    
    # Firewall configuration (currently disabled in your config)
    # firewall = {
    #   enable = false;
    #   allowedTCPPorts = [ ];
    #   allowedUDPPorts = [ ];
    # };
  };
}
