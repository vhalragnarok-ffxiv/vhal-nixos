{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
   xwayland
   xwaylandvideobridge

  ];
  wayland.windowManager.sway.xwayland = true;
  wayland.windowManager.hyprland.xwayland.enable = true;
}
