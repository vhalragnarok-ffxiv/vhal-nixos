{ config, pkgs, ... }:
{
  imports = [];
  home.packages = with pkgs; [
    adwaita-qt
  ];

  #QT
  qt.enable = true;
  qt.platformTheme.name = "gtk";
  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;
  
}
