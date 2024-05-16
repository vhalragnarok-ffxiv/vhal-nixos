{ config, pkgs, inputs, ... }:
{
   hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      vulkan-loader
      vulkan-validation-layers
      vulkan-extension-layer
    ];
   };

   boot.initrd.kernelModules = [ "amdgpu" ];

   environment.systemPackages = with pkgs;[ 
    mesa
    pavucontrol
   ];
}
