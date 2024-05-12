{pkgs}:

pkgs.writeShellScriptBin "update" ''
cd ~/vhal-nixos/ && nix flake update && sudo nixos-rebuild switch --flake ~/nixos/#default && cd
git switch updates
git add System User flake.nix flake.lock
git commit -am "User performed an Update"
git push
gh pr create --fill-verbose
''
