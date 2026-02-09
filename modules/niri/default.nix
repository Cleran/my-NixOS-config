{lib,pkgs,...}: {
  services.xserver.enable = lib.mkForce true;

  services.xserver.desktopManager.lxqt = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    lxqt.lxqt-wayland-session
    xwayland-satellite
  ];

  programs.niri.enable = true;
}
