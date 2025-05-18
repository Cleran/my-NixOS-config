{pkgs, ...}: {
  gtk.enable = true;
  qt.enable = true;

  stylix.targets = {
    mako.enable = false;
    hyprland.enable = false;
    vscode.enable = false;
    wpaperd.enable = false;
  };

  stylix.iconTheme = {
    enable = true;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus-Dark";
    light = "Papirus-Light";
  };
}
