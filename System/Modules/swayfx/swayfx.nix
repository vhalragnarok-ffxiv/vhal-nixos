{ config, pkgs, ... }:
{
  imports = [ 
  ../lxqt-policykit/lxqt-policykit.nix
  ];

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-wlr
    autotiling
    dconf
    swaynotificationcenter
    pamixer
  ];
  sound.mediaKeys.enable = true;
  #boot.initrd.systemd.dbus.enable = true;
  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };
  
  
}
