{ config, pkgs, ... }:
{
  imports = [
  ../copyq/copyq.nix
  ../dunst/dunst.nix
  ../theme/theme-qt.nix
  ../fuzzel/fuzzel.nix
  ../swaync/swaync.nix
  ../waybar/swayfx/waybar-swayfx.nix
  ../wlogout/swayfx/wlogout-swayfx.nix
  ../wayland-compat/wayland-compat.nix
  ];
    xdg.configFile = {
    "sway/config".source = ./config;
    };
}
