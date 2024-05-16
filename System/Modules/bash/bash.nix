{ config, pkgs, ... }:
{
  imports = [];
  programs.bash.shellAliases = {
   #update = "cd ~/vhal-nixos/ && nix flake update  && sudo nixos-rebuild switch --flake ~/nixos/#default && cd";
   switch = "sudo nixos-rebuild switch --flake ~/vhal-nixos/#default";
   cd = "z";
   vim = "lvim";
   nvim = "lvim";
  };
}
