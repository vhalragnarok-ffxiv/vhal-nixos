{ config, pkgs, lib, ... }:
{
  imports = [];

   home.packages = with pkgs; [
    path-of-building
  ]; 
}