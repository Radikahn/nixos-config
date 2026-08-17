{ config, pkgs, ... }:

{
  # Time zone
  time.timeZone = "America/Los_Angeles";
  
  # Locale
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  
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
    vscode
    jetbrains.idea-oss
    zed-editor
    typst
    
    # Terminal emulators
    alacritty
    kitty
    
    # Development tools
    git
    gcc_multi
    docker
    docker-compose
    rustc
    rustup
    cargo
    rust-analyzer
    nodejs_latest
    python3
    uv
    clang
    clang-tools
    claude-code
    pkg-config
    meson
    gnumake
    gdbm
    jdt-language-server
    lua-language-server
    bun
    
    # CLI utilities
    btop
    fastfetch
    fzf
    ripgrep
    bat
    just
    nushell
    bash
    curl
    coreutils
    nmap
    screen
    zellij
    usbutils
    udiskie
    udisks
    tmux
    
    # Compression/Archive
    p7zip
    zip
    unzip
    xz
    
    # Libraries
    ntfs3g
    openssl
    zlib
    glib
    gettext
    tcl
    tk

    
    # Desktop applications
    spotify
    obsidian
    zoom-us
    vlc
    vesktop
    calcurse

    #emulators
    bottles
    
    # Wayland/Hyprland tools
    rofi
    waybar
    swww
    grimblast
    brightnessctl
    playerctl
    gamescope

    # System utilities
    parted
    mangohud
    protonup-qt
    fprintd
    openvpn

    #virtualisation
    virt-manager
    virt-viewer
    qemu

  ];
}
