{ config, pkgs, ... }:
{
  imports = [../polkit_gnome/polkit_gnome.nix];

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-wlr
    autotiling
    dconf
  ];

  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };
  
  
}
