{pkgs, ...}: {
  fonts.packages = with pkgs; [
    twemoji-color-font
    noto-fonts-emoji
    noto-fonts-cjk-sans

    font-awesome # awesome and material are already in nerd fonts
    material-icons # this is just for fallback
    nerd-fonts.symbols-only

    nerd-fonts.hack # bold characters are hard to differentiate
    nerd-fonts.fira-code # in the mono version the icons are too small
    nerd-fonts.jetbrains-mono
  ];
}
