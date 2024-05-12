{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    sops-nix.url = "github:Mic92/sops-nix";

    home-manager = {
     url = "github:nix-community/home-manager";
     inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:pjones/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
   
  };

  outputs = { self, nixpkgs, chaotic, sops-nix, plasma-manager, ... }@inputs: 
  {

      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./System/configuration.nix
        inputs.home-manager.nixosModules.default
        chaotic.nixosModules.default
        sops-nix.nixosModules.sops
        
      ];
    };
  };
    
  
    
}  

