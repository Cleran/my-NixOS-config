{ pkgs, ... }:
{
  gtk.enable = true;
  gtk.gtk4.theme = null;
  qt.enable = true;

  stylix = {

    targets = {
      mako.enable = false;
      hyprland.enable = false;
      vscode.enable = false;
      wpaperd.enable = false;
      niri.enable = false;

      zellij.enable = true;
    };

    autoEnable = true;

    icons = {
      enable = false;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}
