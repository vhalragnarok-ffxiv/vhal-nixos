{ config, pkgs, inputs, ... }:
{
  imports = [inputs.sops-nix.homeManagerModules.sops];
  
  sops = {
    age.keyFile = "/home/vhal/.config/sops/age/keys.txt";

    defaultSopsFile = ../../../System/secrets/secrets.yaml;
    validateSopsFiles = false;

    secrets = {
        "git/vhal/id_ed25519" = {
            path = "/home/vhal/.ssh/id_ed25519";
        };
    };

  };
  
 
}