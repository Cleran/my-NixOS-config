{
  inputs,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    inputs.dms.homeModules.dank-material-shell
    inputs.dms-plugin-registry.modules.default
    inputs.dms.homeModules.niri
  ];

  programs.dank-material-shell = {
    enable = true;

    systemd = {
      enable = false;
      restartIfChanged = false;
    };

    enableSystemMonitoring = true;
    enableVPN = true;
    enableDynamicTheming = true;
    enableAudioWavelength = false;
    enableCalendarEvents = false;
    enableClipboardPaste = true;

    settings = {
      theme = "dark";
      dynamicTheming = true;
    };

    plugins = {
      # danklinux.com/plugins
      dankBatteryAlerts.enable = true;
      dockerManager.enable = true;
      dankKDEConnect.enable = true;
      tailscale.enable = true;
      dmsLenovoBatterySettings.enable = true;

      mediaPlayer = {
        enable = true;
      };
    };

    niri = {
      enableKeybinds = false; # conflicts with niri.includes.enable
      enableSpawn = true;

      includes = {
        enable = true;

        override = true;
      };
    };
  };

  programs.niri.settings = {
    environment."NIXOS_OZONE_WL" = "1";
    xwayland-satellite = {
      enable = true;
      path = lib.getExe pkgs.xwayland-satellite;
    };
  };

  home.packages = with pkgs; [
    nautilus # niri uses this as file picker
  ];
}
