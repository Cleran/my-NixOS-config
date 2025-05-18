{pkgs, ...}: {
  programs.thunar.enable = true;
  programs.git.enable = true;

  environment.systemPackages = with pkgs; [
    # notes
    qownnotes
    qc

    # cli-tools
    zoxide
    eza
    jq
    fd
    tldr
    aria2
    bat
    gh
  ];
}
