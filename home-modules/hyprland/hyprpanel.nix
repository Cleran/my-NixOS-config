{inputs, ...}: {
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    enable = false;
    systemd.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;

    settings = {
      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;

      layout = {
        "bar.layouts" = {
          "0" = {
            left = ["dashboard" "workspaces"];
            middle = ["media"];
            right = ["volume" "systray" "notifications"];
          };
        };
      };

      menus.clock = {
        time = {
          military = true;
          hideSeconds = true;
        };
        weather.unit = "metric";
      };
    };
  };
}
