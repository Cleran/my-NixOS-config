{
  pkgs,
  username,
  ...
}: {
  environment.systemPackages = with pkgs; [
    hyprpolkitagent
    catppuccin-sddm
  ];

  programs.hyprland = {
    enable = true;
  };

  # services.displayManager = {
  #   sddm = {
  #     enable = true;
  #     wayland.enable = true;
  #     wayland.compositor = "kwin";
  #     package = pkgs.kdePackages.sddm;
  #     theme = "catppuccin-mocha";
  #   };
  #   defaultSession = "hyprland";
  # };

  stylix.targets.regreet.enable = true;
  programs.regreet.enable = true;
  services.greetd = {
    enable = true;
    # stylix already sets the default session
    # settings = {
    #   default_session = {
    #     user = username;
    #     command = "${pkgs.greetd.regreet}/bin/regreet";
    #   };
    # };
  };

  security.polkit.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = false;
    extraPortals = with pkgs; [xdg-desktop-portal-gtk xdg-desktop-portal-hyprland];
    configPackages = with pkgs; [hyprland];
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    alsa = {
      support32Bit = true;
      enable = true;
    };
  };
}
