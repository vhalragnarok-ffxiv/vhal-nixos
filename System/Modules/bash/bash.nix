{ config, pkgs, ... }:
{
  imports = [];
  programs.bash.shellAliases = {
   update = "cd ~/nixos/ && nix flake update  && sudo nixos-rebuild switch --flake ~/nixos/#default && cd";
   switch = "sudo nixos-rebuild switch --flake ~/nixos/#default";
   backup = "cd ~/vhal-nixos/ && cp -r ~/nixos/User . && cp -r ~/nixos/System . && cp ~/nixos/flake.nix . && cp ~/nixos/flake.lock .&& git add . && git commit -am user-backup && git push";
   cd = "z";
   vim = "lvim";
   nvim = "lvim";
  };
}
