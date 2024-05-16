{ config, pkgs, ... }:
{
  imports = [];
  programs.bash.shellAliases = {
   update = "cd ~/vhal-nixos/ && nix flake update  && sudo nixos-rebuild switch --flake ~/nixos/#default && cd";
   switch = "cd ~/vhal-nixos/ && git add . && git commit -am user-switch && sudo nixos-rebuild switch --flake ~/vhal-nixos/#default";
   backup = "cd ~/vhal-nixos/ && git push";
   cd = "z";
   vim = "lvim";
   nvim = "lvim";
  };
}
