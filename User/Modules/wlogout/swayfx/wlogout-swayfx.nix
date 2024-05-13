{ config, pkgs, ... }:
{
  imports = [];

  programs.wlogout.enable = true;
  programs.wlogout.layout = [
    {
      label = "logout";
      action = "swaymsg exit";
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
