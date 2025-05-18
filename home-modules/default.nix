{...}: {
  imports = [
    ./hyprland
    ./programs.nix
    ./nvf.nix
    ./starship.nix
    ./bash.nix
    ./stylix.nix
    ./rofi
    ./ghostty.nix
  ];

  # catppuccin = {
  #   flavor = "mocha";
  #   enable = true;
  #   # cursors.enable = true;
  # };
}
