{...}: {
  stylix.targets.ghostty.enable = false;
  home.sessionVariables.TERMINAL = "ghostty";

  programs.ghostty = {
    enable = true;
    installBatSyntax = true;

    settings = {
      mouse-hide-while-typing = true;
      # gtk-adwaita = false;
      theme = "Catppuccin Mocha";
      font-family = [ "JetBrainsMono Nerd Font" "Twitter Color Emoji" ];
      font-size = 16;
    };
  };
}
