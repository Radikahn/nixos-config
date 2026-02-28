{ config, pkgs, ... }:

{
   
	
  #enable bluetooth
  hardware.bluetooth.enable = true;
  
  
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
  
  
  # USB utilities
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  
  
  # SSH (currently disabled in your config)
  services.openssh = {
    enable = true;
    passwordAuthentication = true;
  };
  
    # OpenVPN Server
  services.openvpn.servers = {
    homeVPN = {
      config = ''
        # Server configuration
        port 1738
        proto udp
        dev tun
        
        # Paths to certificates and keys
        ca /etc/openvpn/ca.crt
        cert /etc/openvpn/server.crt
        key /etc/openvpn/server.key
        dh /etc/openvpn/dh2048.pem
        
        # Network configuration
        server 10.8.0.0 255.255.255.0
        
        # Push routes to clients
        push "redirect-gateway def1 bypass-dhcp"
        push "dhcp-option DNS 8.8.8.8"
        push "dhcp-option DNS 8.8.4.4"
               
        # Security settings
        keepalive 10 120
        cipher AES-256-GCM
        auth SHA256
        user nobody
        group nogroup
        persist-key
        persist-tun

        
        # Logging
        status /var/log/openvpn-status.log
        verb 3
      '';
    };
  };
}
