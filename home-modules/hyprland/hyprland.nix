{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    wl-clipboard
    hyprpolkitagent
    hyprland-qtutils
    kitty
    brightnessctl
    hyprshot
    dunst
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    package = null;
    portalPackage = null;

    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };

    xwayland.enable = true;

    settings = {
      exec-once = [
        "ghostty"
        "waybar"
        "systemctl --user start hyprpolkitagent"
        "dunst"
      ];

      "$mainMod" = "SUPER";
      env = [
        # Nixos
        "NIXOS_OZONE_WL, 1"
        "NIXPKGS_ALLOW_UNFREE, 1"

        # Toolkit Backend Variables
        "GDK_BACKEND,wayland,x11,*"

        # XDG Specifications
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"

        # Qt Variables
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM,wayland;xcb"
      ];

      # windowrule = "suppressevent maximize, class:.*"; 
      #windowrule = "no_focus yes,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"; # fix some dragging issues with xwayland

      general = {
        gaps_in = 3;
        gaps_out = 5;

        border_size = 2;

        allow_tearing = false;

        layout = "dwindle";

        "col.active_border" = "rgb(${config.lib.stylix.colors.base0D})";
        "col.inactive_border" = "rgb(${config.lib.stylix.colors.base03})";
      };

      decoration = {
        rounding = 3;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = false;
      };

      input = {
        kb_layout = "us";

        follow_mouse = 1;

        sensitivity = 0;
      };

      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };
    };

    extraConfig = "
        monitor=,highres,auto,1
      ";
  };
}
