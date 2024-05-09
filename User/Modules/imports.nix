{ config, pkgs, ... }:
{
  imports = [
    ./starship/starship.nix
    ./vesktop/vesktop.nix
    ./alacritty/alacritty.nix
    ./theme/theme.nix
    ./input-remapper/input-remapper.nix
    ./spotify/spotify.nix
    ./bitwarden/bitwarden.nix
    ./path-of-building/path-of-building.nix #Disable this if you don't play PoE.... Can't make this an option sanely.
    ./zoxide/zoxide.nix
  ];
}
