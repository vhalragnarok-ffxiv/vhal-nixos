{ config, pkgs, ... }:
{
  imports = [];

  environment.systemPackages = with pkgs; [
    gnome.gnome-keyring
  ];

  services.gnome.gnome-keyring.enable = true;
}
