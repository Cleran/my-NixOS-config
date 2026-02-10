{pkgs, ...}: {
  gtk.enable = true;
  qt.enable = true;

  stylix.targets = {
    mako.enable = false;
    hyprland.enable = false;
    vscode.enable = false;
    wpaperd.enable = false;
    niri.enable = false;
  };

  stylix.autoEnable = false;

  stylix.icons = {
    enable = false;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus-Dark";
    light = "Papirus-Light";
  };
}
