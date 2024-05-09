{ config, pkgs, lib, inputs, ... }:
{
   #Dependenices of Tokyo Night SDDM  
   environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
  ];
   services.displayManager = {
    sddm.enable = true;
    sddm.theme = "${import ./tokyo-night-sddm.nix {inherit pkgs; }}";
   };


  
}