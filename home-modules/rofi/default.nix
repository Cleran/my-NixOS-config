{pkgs,...}:{
  xdg.configFile."rofi/launcher.rasi".source = ./launcher.rasi;
  xdg.configFile."rofi/picker.rasi".source = ./picker.rasi;
  xdg.configFile."rofi/themes/catppuccin.rasi".source = ./themes/catppuccin.rasi;
  
  stylix.targets.rofi.enable = false;

  programs.rofi = {
    enable = true;
    plugins = [pkgs.rofi-emoji];
  };
}
