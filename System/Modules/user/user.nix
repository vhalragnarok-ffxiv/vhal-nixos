{ config, pkgs, lib, inputs,... }:
{
  imports = [];
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.vhal = {
    isNormalUser = true;
    description = "Vhal Ragnarok";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      vscode
    ];
  };

 #Importing & Setting up Home-Manager as a Module.
    home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = {inherit inputs;};
    users = {
      "vhal" = import ../../../User/home.nix;
    };
  };


  
  
}
