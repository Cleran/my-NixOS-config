{...}: {
  stylix.targets.ghostty.enable = false;

  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    installBatSyntax = true;

    settings = {
      mouse-hide-while-typing = true;
      # gtk-adwaita = false;
      theme = "catppuccin-mocha";
      font-family = [ "JetBrainsMono Nerd Font" "Twitter Color Emoji" ];
      font-size = 16;
    };
  };
}
