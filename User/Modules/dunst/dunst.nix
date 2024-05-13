 { config, pkgs, ... }:
{
  imports = [];
  home.packages = with pkgs; [
    dunst
  ];
   
   services.dunst.enable = true;
   
}   
