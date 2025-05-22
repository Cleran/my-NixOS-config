{...}: {
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = ["nix-command" "flakes" "pipe-operators"];

  system.stateVersion = "24.11";
}
