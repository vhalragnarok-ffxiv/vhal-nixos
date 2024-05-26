{ config, pkgs, ... }:
{
  imports = [
    ./bash/bash.nix
    ./drivers/drivers.nix
    ./fonts/fonts.nix
    ./input-remapper/input-remapper.nix
    ./laptop/laptop.nix
    ./automatic/automatic.nix
    ./kernel/kernel.nix
    ./bootloader/bootloader.nix
    ./networking/networking.nix
    ./localization/localization.nix
    ./sound/sound.nix
    ./user/user.nix
    ./steam/steam.nix
    ./git/git.nix
    ./gnome-keyring/gnome-keyring.nix
    ./distrobox/distrobox.nix
     #I shouldn't need to fuck with SDDM but JIC. I should be able to handle X11 shit in X11 shit.
    ./sddm/sddm.nix
     #DE / WM Selection. Comment out what you don't want.    
     #./plasma/plasma.nix
    ./swayfx/swayfx.nix
  ];
}
