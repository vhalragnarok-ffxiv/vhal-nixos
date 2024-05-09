{ config, pkgs, ... }:
{
  imports = [];

  #GTK (Catppuccin Frappe Blue accent Compact size black rimless tweaks )
  #gtk = {
    #enable = true;
    #theme = {
      #name = "Catppuccin-Frappe-Compact-Blue-Dark";
      #package = pkgs.catppuccin-gtk.override {
        #accents = ["blue"];
        #size = "compact";
        #tweaks = ["rimless" "black"];
        #varaint = "frappe";
      #};
    #};
  #};
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Frappe-Compact-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "blue" ];
        size = "compact";
        tweaks = [ "rimless" "black" ];
        variant = "frappe";
      };
    };
    iconTheme.package = pkgs.tela-icon-theme;
    iconTheme.name = "Tela"; 
    cursorTheme.package = pkgs.bibata-cursors;
    cursorTheme.name = "Bibata-Modern-Classic";
  };

  #GTK 4.0
  xdg.configFile = {
  "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
  "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
  "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
};

  #testing
  home.packages = with pkgs; [
    xfce.thunar
    adwaita-qt
  ];


  #QT
  qt.enable = true;
  #qt.platformTheme.name = "gtk";
  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;
  #I hate GTK, I hate GNOME...
  home.file."${config.gtk.gtk2.configLocation}".force = true;
}