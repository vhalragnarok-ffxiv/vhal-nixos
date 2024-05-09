{ config, pkgs, ... }:
{
  programs.alacritty = {
    enable =  true;
    settings = {
      font = {
        size = 8;
        normal.family = "JetBrains Mono NF";
        bold.family = "JetBrains Mono NF";
        italic.family = "JetBrains Mono NF";
      };
    };


  };
}
