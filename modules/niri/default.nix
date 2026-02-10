{inputs,lib,pkgs,...}: {
 imports = [inputs.niri.nixosModules.niri];

  programs.niri = {
    enable = lib.mkDefault true;
    package = pkgs.niri;
  };

  systemd.user.services.niri-flake-polkit.enable = false; # avoid conflict with dms built-in polkit agent
  #  services.xserver.enable = lib.mkForce true;
  #
  #  services.xserver.desktopManager.lxqt = {
  #    enable = true;
  #  };
  #
  #  environment.systemPackages = with pkgs; [
  #    lxqt.lxqt-wayland-session
  #    xwayland-satellite
  #  ];
}
