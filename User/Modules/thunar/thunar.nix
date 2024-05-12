{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
    xfce.thunar
  ];
}
