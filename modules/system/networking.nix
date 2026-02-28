{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixmini";
    networkmanager = {
      enable = false;
    };

    # Static IP so router always sees the same address
    interfaces.end0 = {
      useDHCP = false;
      ipv4.addresses = [{
        address = "192.168.1.228";
        prefixLength = 24;
      }];
    };

    defaultGateway = "192.168.1.254";
    nameservers = [ "8.8.8.8" "8.8.4.4" ];

    # Disable WiFi - using Ethernet only
    interfaces.wlan0.useDHCP = false;
    
    # Firewall configuration (currently disabled in your config)
    # firewall = {
    #   enable = false;
    #   allowedTCPPorts = [ ];
    #   allowedUDPPorts = [ ];
    # };
  };


    # OpenVPN firewall rules
  networking.firewall = {
    # Your existing firewall settings...
    allowedUDPPorts = [ 1738 ];
    trustedInterfaces = [ "tun0" ];
  };
  #
  # NAT configuration for VPN clients
  networking.nat = {
    enable = true;
    externalInterface = "end0";  # Change if your WAN interface is different
    internalInterfaces = [ "tun0" ];
  };
}
