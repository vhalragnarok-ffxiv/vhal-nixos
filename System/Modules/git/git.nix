{ config, pkgs, lib, ... }:
{
  imports = [];
  environment.systemPackages = with pkgs; [
    git
    gh
  ];
}
