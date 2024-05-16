{ config, pkgs, lib, inputs, ... }:
{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
  ];
  services.displayManager.sddm.theme = "${import ./tokyo-night-sddm.nix {inherit pkgs; }}";
  
}
