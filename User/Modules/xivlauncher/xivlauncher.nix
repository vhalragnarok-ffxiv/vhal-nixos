{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
    xivlauncher
   (import ./ffxiv-backup.nix {inherit pkgs;})
   (import ./ffxiv-update.nix {inherit pkgs;})
  ];

  
}
