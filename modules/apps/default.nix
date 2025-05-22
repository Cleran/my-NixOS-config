{pkgs, ...}: {
  programs = {
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [thunar-archive-plugin thunar-volman];
    };

    git.enable = true;
  };

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

    # dependencies
    ffmpegthumbnailer # for thunar preview
  ];
}
