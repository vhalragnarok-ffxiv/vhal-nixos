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
    ./sddm/sddm.nix
  ];
}