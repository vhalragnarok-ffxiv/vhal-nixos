{ config, pkgs, ... }:
{
  imports = [];
  xdg.configFile = {
    "input-remapper-2/config.json".source = ./input-remapper-2/config.json;
    "input-remapper-2/xmodmap.json".source = ./input-remapper-2/xmodmap.json;
    "input-remapper-2/presets/ASRock LED Controller/new preset.json".source = ./input-remapper-2/presets/${"ASRock LED Controller"}/${"new preset.json"};
    "input-remapper-2/presets/Corsair CORSAIR SCIMITAR RGB ELITE Gaming Mouse/Main.json".source = ./input-remapper-2/presets/${"Corsair CORSAIR SCIMITAR RGB ELITE Gaming Mouse"}/Main.json;
    "input-remapper-2/presets/IQUNIX IQUNIX ZONEX75 Mechanical Keyboard/Main.json".source = ./input-remapper-2/presets/${"IQUNIX IQUNIX ZONEX75 Mechanical Keyboard"}/Main.json;
    "input-remapper-2/presets/Keychron Keychron C1/new preset.json".source = ./input-remapper-2/presets/${"Keychron Keychron C1"}/${"new preset.json"};
    "input-remapper-2/presets/Keychron Keychron Q3/new preset.json".source = ./input-remapper-2/presets/${"Keychron Keychron Q3"}/${"new preset.json"};
    "input-remapper-2/presets/Razer Razer Tartarus Pro/Main.json".source = ./input-remapper-2/presets/${"Razer Razer Tartarus Pro"}/Main.json;
    "input-remapper-2/presets/Razer Razer Tartarus Pro/new preset.json".source = ./input-remapper-2/presets/${"Razer Razer Tartarus Pro"}/${"new preset.json"};
    "input-remapper-2/presets/SteelSeries SteelSeries Aerox 9 Wireless/Main.json".source = ./input-remapper-2/presets/${"SteelSeries SteelSeries Aerox 9 Wireless"}/Main.json;
    "input-remapper-2/presets/SteelSeries SteelSeries Aerox 9 Wireless/new preset.json".source = ./input-remapper-2/presets/${"SteelSeries SteelSeries Aerox 9 Wireless"}/${"new preset.json"};
    "input-remapper-2/presets/Video Bus/new preset.json".source = ./input-remapper-2/presets/${"Video Bus"}/${"new preset.json"};
  };
}