{ config, pkgs, ... }:

{
  # Time zone
  time.timeZone = "America/Los_Angeles";
  
   
  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
  ];
  
  # System-wide packages
  environment.systemPackages = with pkgs; [
    # Editors
    neovim
    emacs
    helix
    
    # Terminal emulators
    alacritty
    kitty
    
    # Development tools
    git
    docker
    docker-compose
    rustc
    rustup
    cargo
    rust-analyzer
    uv
    clang
    gdbm
    jdt-language-server
    lua-language-server
    
    # CLI utilities
    btop
    fastfetch
    fzf
    ripgrep
    just
    nushell
    bash
    curl
    nmap
    screen
    zellij
    usbutils
    udiskie
    udisks
    
    # Compression/Archive
    p7zip
    zip
    unzip
    xz
    
  ];
}
