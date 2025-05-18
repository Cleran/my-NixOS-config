{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    pavucontrol # needed for pasystray
    libappindicator # needed(?) for tray icons in wayland
  ];

  services.pasystray.enable = true;
  services.network-manager-applet.enable = true;

  stylix.targets.waybar = {
    enable = true;
    addCss = false;
  };

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        postion = "top";

        modules-left = ["custom/logo" "hyprland/workspaces"];
        # modules-center = ["hyprland/window"];
        modules-right = ["tray" "battery" "clock"];

        "custom/logo" = {
          format = "";
        };

        # use network manager applet instead
        # network = {
        #   format = "{ifname}";
        #   format-wifi = "󰖩";
        #   format-ethernet = "";
        #   format-disconnected = "󰖪";
        #   tooltip-format = "{ifname} via {gwaddr} 󰊗";
        #   tooltip-format-wifi = "{essid} ({signalStrength}%) ";
        #   tooltip-format-ethernet = "{ifname} ";
        #   tooltip-format-disconnected = "Disconnected";
        #   max-length = 50;
        # };

        "hyprland/window" = {
          max-length = 50;
          icon = true;
          format = "{title}";
        };

        # use pasystray instead
        # pulseaudio = {
        #   format = "{icon}";
        #   on-click = "hyprctl dispatch exec [float\\;move 100%-w-20 10%\\;noanim] ${pkgs.pavucontrol}/bin/pavucontrol";
        #   tooltip = false;
        #   "format-muted" = "";
        #   "format-icons" = {
        #     default = [
        #       ""
        #       ""
        #       ""
        #     ];
        #   };
        # };

        battery = {
          format = "{icon}";
          tooltip = true;
          tooltip-format = "{capacity}% {timeTo}";
        };

        clock = {
          format-alt = "{:%a; %d. %b %H:%M}";
          tooltip = false;
        };

        tray = {
          icon-size = 21;
          spacing = 10;
        };
      }
    ];
    style =
      lib.mkAfter (lib.readFile ./style.css);
  };
  # xdg.configFile."waybar/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink ./config.jsonc;
}
