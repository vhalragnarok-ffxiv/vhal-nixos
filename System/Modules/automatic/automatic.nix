{ config, pkgs, ... }:
{
  imports = [];
  #Garbage Collection, runs weekly and deletes generations 14 days or Older. 
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };
}
