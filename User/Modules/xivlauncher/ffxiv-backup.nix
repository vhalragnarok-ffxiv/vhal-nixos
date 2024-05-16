{pkgs}:

pkgs.writeShellScriptBin "ffxiv-backup" ''
cd ~/.xlcore &&
cp -r ffxivConfig ~/vhal-nixos/User/.xlcore/ &&
cp -r installedPlugins ~/vhal-nixos/User/.xlcore/ &&
cp -r Mods ~/vhal-nixos/User/.xlcore/ &&
cp -r pluginConfigs ~/vhal-nixos/User/.xlcore/ &&
cp -r dalamudConfig.json ~/vhal-nixos/User/.xlcore/ &&
cd ~/vhal-nixos &&
git add . &&
git commit -am "User initiated .xlcore backup" &&
echo "Files backed up and a Git Commit has been staged!"
''
