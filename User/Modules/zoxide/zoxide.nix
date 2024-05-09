{ config, pkgs, ... }:
{
  imports = [];
  
  programs.zoxide.enable = true;
  programs.zoxide.enableBashIntegration = true;
}