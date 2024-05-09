{ config, pkgs, ... }:
{
  imports = [];
  programs.starship = {
    enable = true;
    settings = {
      #TODO Config Starship...
    };
    enableBashIntegration = true;
  };
  programs.bash.enable = true;
}