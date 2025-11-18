{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    
    # Firewall configuration (currently disabled in your config)
    # firewall = {
    #   enable = false;
    #   allowedTCPPorts = [ ];
    #   allowedUDPPorts = [ ];
    # };
  };
}
