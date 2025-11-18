{ config, pkgs, ... }:

{

  # Home Manager needs this
  home.stateVersion = "25.05";
  home.username = "radikahn";
  home.homeDirectory = "/home/radikahn";
  
  programs.home-manager.enable = true;


  # Alacritty terminal
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding = {
          x = 10;
          y = 10;
        };
        opacity = 0.95;
        decorations = "full";
      };
      
      font = {
        size = 11.0;
        normal = {
          family = "FiraCode Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "FiraCode Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "FiraCode Nerd Font";
          style = "Italic";
        };
      };
      
      colors = {
        primary = {
          background = "0x282a36";
          foreground = "0xf8f8f2";
        };
        normal = {
          black = "0x21222c";
          red = "0xff5555";
          green = "0x50fa7b";
          yellow = "0xf1fa8c";
          blue = "0xbd93f9";
          magenta = "0xff79c6";
          cyan = "0x8be9fd";
          white = "0xf8f8f2";
        };
      };
      
      cursor = {
        style = "Block";
        unfocused_hollow = true;
      };
    };
  };
  
  # Kitty terminal
  programs.kitty = {
    enable = true;
    theme = "Dracula";
    font = {
      name = "FiraCode Nerd Font";
      size = 11;
    };
    settings = {
      background_opacity = "0.95";
      window_padding_width = 10;
      enable_audio_bell = false;
    };
  };
  
  # Zellij terminal multiplexer
  programs.zellij = {
    enable = true;
  };
  
  # Btop system monitor
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "dracula";
      theme_background = false;
      vim_keys = true;
    };
  };
  
  # Rust development
  home.file.".cargo/config.toml".text = ''
    [build]
    jobs = 8
    
    [term]
    color = "always"
  '';
  
  # Python development with UV
  home.sessionVariables = {
    UV_PYTHON_PREFERENCE = "only-managed";
  };
}
