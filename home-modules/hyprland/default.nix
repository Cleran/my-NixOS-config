{pkgs, ...}: {
  imports = [
    ./waybar
    ./hyprland.nix
    ./binds.nix
    ./dunst.nix
  ];
  programs = {
    wofi.enable = false;
  };
  services.cliphist = {
    enable = true;
    allowImages = true;
  };
}
