{pkgs, ...}: {
  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
    auto-optimise-store = true;
  };

  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd

    killall
  ];

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 5";
    flake = "/home/cleran/systemconfig";
  };
}
