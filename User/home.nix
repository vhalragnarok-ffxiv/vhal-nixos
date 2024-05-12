{ config, pkgs, inputs, outputs, lib, plasma-manager, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "vhal";
  home.homeDirectory = "/home/vhal";

  #Allow Unfree Packages like Spotify...
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  imports = [ 
    ./Modules/imports.nix
  ];

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
