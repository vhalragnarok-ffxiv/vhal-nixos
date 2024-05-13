{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
  fuzzel
  ];
}
