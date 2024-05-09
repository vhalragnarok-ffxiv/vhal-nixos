# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ../hardware-configuration.nix
      ./Modules/system_imports.nix
    ];

config = {
 
  #Selectable Kernel!
  #"zen" for zen kernel, "cachy" for CachyOS Kernel, or nothing for default.
  kernel.Selection = "cachy";

  #Are you running on the laptop?
  laptop.enable = true;
  
  #TODO: Remove as Window Managers get configured!

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
 
  services.xserver.desktopManager.plasma5.enable = true;
    
  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes"];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  
  #TODO: Remove this... Also there is junk in System -> Modules -> user -> user.nix as well
  # List packages installed in system profile. To search, run:
  # $ nix search wget
 environment.systemPackages = with pkgs; [
  vim
 ];

  #TODO: Uhh... Probably remove?
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
};
}
