{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    hyprpolkitagent
    catppuccin-sddm
  ];

  programs.hyprland = {
    enable = true;
  };

  services.displayManager.gdm = {
    enable = true;
  };

  security.polkit.enable = lib.mkDefault true;
  xdg.portal = {
    enable = true;
    wlr.enable = false;
    extraPortals = with pkgs; [xdg-desktop-portal-gtk xdg-desktop-portal-hyprland];
    configPackages = with pkgs; [hyprland];
  };

  services.pipewire = lib.mkDefault {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    alsa = {
      support32Bit = true;
      enable = true;
    };
  };

  # enable automount
  services = {
    devmon.enable = lib.mkDefault true;
    gvfs.enable = lib.mkDefault true;
    udisks2.enable = lib.mkDefault true;
  };
}
