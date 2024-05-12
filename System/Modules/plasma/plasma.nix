{ config, pkgs,... }:
{
  imports = [];

  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.libsForQt5; [kate konsole elisa];
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.xserver.enable = true;
  services.displayManager.sddm.theme = "breeze";
  environment.systemPackages = with pkgs; [
  materia-kde-theme
  ];
  
  xdg.portal = {
  enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-kde
      xdg-desktop-portal-gtk
    ];
  };
}
