{ config, pkgs,... }:
{
  imports = [];

  environment.systemPackages = with pkgs; [
   lxqt.lxqt-policykit
  ];
}
