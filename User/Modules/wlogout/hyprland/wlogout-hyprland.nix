{ config, pkgs, ... }:
{
  imports = [];

  programs.wlogout.enable = true;
  programs.wlogout.layout = [
    {
      label = "logout";
      action = "sleep 1; hyprctl dispatch exit";
      text = "Logout";
      keybind = "e";
    }
    {
      label = "shutdown";
      action = "systemctl poweroff";
      text = "Shutdown";
      keyind = "s";
    }
    {
      label = "reboot";
      action = "systemctl reboot";
      text = "Reboot";
      keybind = "r";
    }
  ];
}
