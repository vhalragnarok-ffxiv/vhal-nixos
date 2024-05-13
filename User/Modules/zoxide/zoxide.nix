{ config, pkgs, ... }:
{
  imports = [];
  
  programs.zoxide.enable = true;
  programs.fzf.enable = true;
  programs.fzf.enableBashIntegration = true;
  programs.zoxide.enableBashIntegration = true;
}
