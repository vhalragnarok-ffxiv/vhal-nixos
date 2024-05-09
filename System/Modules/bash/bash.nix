{ config, pkgs, ... }:
{
  imports = [];
  programs.bash.shellAliases = {
   update = "cd ~/nixos/ && nix flake update  && sudo nixos-rebuild switch --flake ~/nixos/#default && cd";
   switch = "sudo nixos-rebuild switch --flake ~/nixos/#default";
   cd = "z";
  };
}