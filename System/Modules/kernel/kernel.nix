{ config, pkgs, lib, inputs, ... }:
{
  options = {
   kernel.Selection = lib.mkOption {
    type = lib.types.string;
    default = "default";
   };
  };

 config = lib.mkMerge [
   (lib.mkIf (config.kernel.Selection == "zen") { boot.kernelPackages = pkgs.linuxPackages_zen; })
  (lib.mkIf (config.kernel.Selection == "cachy") { boot.kernelPackages = pkgs.linuxPackages_cachyos; })
  (lib.mkDefault ({boot.kernelPackages = pkgs.linuxPackages; }))
];


 
 
    
  
}