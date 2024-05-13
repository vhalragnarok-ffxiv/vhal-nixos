{ config, pkgs, ... }:
{
  imports = [];
  programs.waybar = {
    enable = true;
    style = ''* {
        min-height: 0;
        font-family: 'JetBrainsMono Nerd Font';
        font-weight: 800;
      }

      window#waybar {
        background: linear-gradient(0deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.64) 100%);
        color: #ffffff;
        transition-property: background-color;
        transition-duration: .5s;
       }

      window#waybar.hidden {
          opacity: 0.2;
      }

      #workspaces {
        margin-left: 2px;
      }

      #workspaces button {
        border: none;
        color: rgba(255, 255, 255, 0.6);
        padding: 0;
        margin-left: 4px;
        background: transparent;
        box-shadow: none;
      }

      #workspaces button.urgent {
        color: #fa9f8e;
      }

      #workspaces button.active,
      #workspaces button.focused {
        color: rgba(255, 255, 255, 1);
      }

      #window {
        font-weight: 400;
      } 

      #pulseaudio {
        padding-right: 2px;
      }

      #pulseaudio.muted {
        color: #90b1b1;
      }

      #idle_inhibitor.activated {
        border-radius: 2px;
        background-color: #ecf0f1;
        color: #2d3436;
        margin: 5px 0;
        border-left: 3px solid #ecf0f1;
      }

      #battery {
        margin-right: 6px;
      }

      #battery.charging,
        #battery.plugged {
        color: #2daf7b;
        background: transparent;
      }

      @keyframes blink {
        to {
          color: #f53c3c;
        }
      }

      #battery.critical:not(.charging) {
        color: #ffffff;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;
        animation-direction: alternate;
      }
 '';
    settings = [{
       "layer" = "top";
        "height" = 28;
        "spacing" = 20;
        "modules-left" = [
          "sway/workspaces"
          "sway/window"
       ];
       modules-center = [
         "clock"
          "custom/notification"
        ];
        modules-right = [
          "tray"
          "pulseaudio"
        ];
        "hyprland/workspaces" = {
          "on-click" = "activate";
        };
        "clock" = {
          "format" = "{:%r}";
          "format-alt" = "{:%Y-%m-%d  %H:%M:%S %p}";
        };
        "custom/notification" = {
          "tooltip" = false;
          "format" = "{icon}";
          "format-icons" = {
              "notification" = " ";
              "none" = " ";
              "dnd-notification" = " ";
              "dnd-none" = " ";
              "inhibited-notification" = " ";
              "inhibited-none" = "";
              "dnd-inhibited-notification" = "<span foreground='red'><sup></sup></span>";
              "dnd-inhibited-none" = " ";
          };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          "exec" = "swaync-client -swb";
          "on-click-right" = "swaync-client -d -sw";
          "on-click" = "sleep 0.1; swaync-client -t -sw";
          "escape" =  true;
        };
        "tray" = {
          "icon-size" = 14;
          "spacing" = 8;
        };
        "pulseaudio" = {
          "format" = "{volume}% {icon} {format_source}";
          "format-bluetooth" = "{volume}% {icon} {format_source}";
          "format-bluetooth-muted" = "  {icon} {format_source}";
          "format-muted"= " {format_source}";
          "format-source" = "  ";
          "format-source-muted" = "";
          "format-icons" = {
            "headphone" = "";
            "hands-free" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = [
                "  "
                "  "
                "   "
            ];
          "ignored-sinks" = [
            "Easy Effects Sink"
            "Easy Effects"
            "easyeffects_sink"
          ];
          "on-click" = "pavucontrol";
         };
        };
    }];
  };
 }
