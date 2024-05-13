{ config, pkgs, ... }:
{
  imports = [];
  home.packages = with pkgs; [
  dconf
  ];  
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

  #I hate GTK, I hate GNOME...
  home.file."${config.gtk.gtk2.configLocation}".force = true;
}
