{ config, pkgs, lib, ... }:
{
  imports = [];
  environment.systemPackages = with pkgs; [
    git
    gh
  ];
  programs.git.userName = "vhal";
  programs.git.userEmail = "bilbobaggins30@protonmail.com";
}
