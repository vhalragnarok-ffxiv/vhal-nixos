{pkgs}:

pkgs.writeShellScriptBin "ffxiv-update" ''
cd ~/vhal-nixos/User &&
cp -r .xlcore ~/ &&
echo "Files Placed!"
''
