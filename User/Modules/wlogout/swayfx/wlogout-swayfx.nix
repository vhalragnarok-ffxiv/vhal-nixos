{ config, pkgs, ... }:
{
  imports = [];

  programs.wlogout.enable = true;
  xdg.configFile = {
    "wlogout/layout".source = ./layout;
  };
} 
