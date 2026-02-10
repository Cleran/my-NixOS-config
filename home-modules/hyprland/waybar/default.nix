{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    pavucontrol # needed for pasystray
    libappindicator # needed(?) for tray icons in wayland
  ];

  services.pasystray.enable = lib.mkDefault true;
  services.network-manager-applet.enable = lib.mkDefault true;

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
        modules-right = ["tray" "battery" "clock"];

        "custom/logo" = {
          format = "";
        };

        "hyprland/window" = {
          max-length = 50;
          icon = true;
          format = "{title}";
        };

        battery = {
          format = "{icon}";
          format-icons = [
            "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"
          ];
          tooltip = true;
          tooltip-format = "{capacity}% {timeTo}";
          states = {
            warning = 30;
            critical = 15;
          };
          interval = 60;
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
}
