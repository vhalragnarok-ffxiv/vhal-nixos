This is for my personal use!
I provide no warranty nor no guarantee that this project works.
Please do not create issues or PRs against this project. 

#File Structure
#Root Directory:
- flake.lock : Versioning Data.
- flake.nix : Basically defines where we get stuff from.
- hardware-configuration.nix : You'll need your own.

#System
-configuration.nix : System Options. 
#System/Modules
- Automatic : Automates Garbage Collection.
- Bash : Aliases (switch, update, cd, vim, nvim).
- Bootloader: Systemd. No need to touchy. 
- Drivers: AMD only. 
- fonts: Provides system fonts such as Nerd Fonts.
- git: Git & GH.
- gnome-keyring: About the only thing GNOME I'd ever use TBH.
- hyprland: WIP. 
- input-remapper: Input-Remapper 
- kernel: Selectable kernel in configuration.nix. Zen, Cachy (default), Default (current LTS)
- laptop: Laptop specific shennanigans.
- localization: Localization stuff. 
- lxqt-policykit: Look. It doesn't look pretty but it gets the job done. About the only working PolKit.
- networking: ....
- plasma: KDE Plasma! Please note you should only select 1 WM or DE to use... There is a reason.
- sddm: Login Manager.
- sound: Pipewire.
- steam: ....
- swayfx: In-Use by default.
- system_imports.nix: Where you can manually toggle stuff on and off.
#User
We use Home-Manager as a Module... Or whatever method allows you to have multiple users and requires ```sudo``` invocation. 
- home.nix: Barebones.
#User/Modules
- bitwarden: ....
- copyq: Needed for Wayland Window Managers.
- dunst: Needed for X11 Tilers.
- firefox: My setup delcarative! Stripped down, no garbage. Ad-blockers and shields up, its a dangerous world out there.
- fuzzel: I hate Rofi... Use for Wayland Window Managers.
- grim-slurp: Screenshots on Wayland Window Managers!
- hyprland-home: WIP.
- input-remapper: Bugger this was. This declares my config files. I hate whitespaces.
- kitty: Terminal for all setups.
- nvim: Neovim, except we actually use LunarVim. Isn't that neat?!
- path-of-building: PoE is hot garbage, IDK why this is here. Also doesn't shoot out a .desktop file.... Ree.
- plasma-home: Plasma-Manager stuff. Look it may get you close to my setup, IDK.
- spotify: ....
- starship: Just installs Starship since the default layout is sane.
- swayfx-home: Default in use. 
- swaync: Used with Waybar for Wayland Window-Managers.
- theme: This is why you cannot enable a Tiling WM with KDE... I have Qt Configured, leave me alone.
- thunar: File manager for Tiling WMs.
- vesktop: Discord is trash. Vesktop makes it barely tolerable.
- waybar: Minimal and I do literally mean minimal status bar for Wayland. I hate flashy bars.
- wayland-compat: Stuff for the Wayland Tiling WMs.
- wlogout: For Wayland Window Managers
- xivlauncher: .... Waiting on the RB Fork to actually drop so I can set that override. 
- zoxide: cd but better. 
- imports.nix: Where you can adjust what to include. 

#Keybinds

I want you to go to QTile and look at thier keybinds. Study them. Chances are pretty high that I use all of them.
But JIC you did not do what I asked here they are:

Meta: Mod4 aka Super aka That other OS Button.

- Meta + W: Close a window
- Meta + Enter: Open Kitty
- Meta + R: Run stuff
- Meta + #: Switch to that workspace.
- Meta + Shift + #: Move window to that workspace
- Meta + Shift + C: Reload Config. You'll rarely use this, and its after invoking Home Manager and Home Manager only if you change my SwayFX Config.
- Meta + Shift + E: Shows WLogout. 
- Meta + F: Fullscreen

The rest just look up kek.... If I didn't write it down, I don't really use it. 

#TO-DO:

Write a script (probably ffxiv-update, ffxiv-backup) to initalize my FFXIV Settings & Back them up to Git Hub or some Repo.

Other than that, feel free to look around! Some things are hacky, some things are clever, some things are held up by duct tape, and fragile hopes and dreams. 


