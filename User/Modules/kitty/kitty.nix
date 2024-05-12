{ config, pkgs, ... }:
{

  programs.kitty = {
    enable =  true;
    font = {
       size = 10;
       name = "JetBrains Mono NF";    
      };
    theme = "Catppuccin-Mocha";
    settings = {
        background_opacity = "0.9";
    };
  };
}