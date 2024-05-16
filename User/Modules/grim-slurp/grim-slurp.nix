{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
    grim
    slurp
    viewnior
  ];
}
