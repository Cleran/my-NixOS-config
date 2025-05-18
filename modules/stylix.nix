{
  pkgs,
  config,
  inputs,
  ...
}: {
  imports = [inputs.stylix.nixosModules.stylix];
  disabledModules = ["${inputs.stylix}/modules/halloy/nixos.nix"];
  stylix = {
    enable = true;
    image = ../imgs/haunted-house.jpg;
    imageScalingMode = "fill";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    polarity = "dark";

    cursor = {
      package = pkgs.catppuccin-cursors.mochaLight;
      name = "catppuccin-mocha-light";
    };


    opacity = {
      applications = 1.0;
      desktop = 1.0;
      popups = 1.0;
      terminal = 1.0;
    };

    fonts = {
      serif = config.stylix.fonts.sansSerif;
      sansSerif = config.stylix.fonts.monospace; 
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono";
      };
      emoji = {
        package = pkgs.twemoji-color-font;
        name = "Twitter Color Emoji";
      };

      sizes = {
        applications = 16;
        desktop = 14;
        popups = 14;
        terminal = 16;
      };

    };
  };
}
