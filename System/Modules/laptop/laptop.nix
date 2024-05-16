{ config, pkgs, lib, ... }:
{
  imports = [];

  options = {
    laptop.enable = 
    lib.mkEnableOption "enables laptop";
  };

config = lib.mkIf config.laptop.enable {
#Laptop Specific
  hardware.system76.enableAll = true;
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

};

}
