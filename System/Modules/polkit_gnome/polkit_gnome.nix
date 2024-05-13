{ config, pkgs,... }:
{
  imports = [];

  environment.systemPackages = with pkgs; [
    polkit_gnome
  ];
}
