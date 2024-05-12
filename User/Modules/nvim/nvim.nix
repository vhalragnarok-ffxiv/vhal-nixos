{ config, pkgs, ... }:
{
  imports = [];
  
  home.packages = with pkgs; [
   #neovim
   lunarvim 
  ];

  home.sessionVariables = {
    EDITOR = "lvim";
  };
  
}