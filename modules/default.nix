{inputs, ...}: {
  imports = [
    ./hyprland
    ./nix-tools.nix
    ./home-manager.nix
    ./fonts.nix
    ./apps
    ./stylix.nix
    ./plymouth.nix
  ];
}
