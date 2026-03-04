{ pkgs, ... }:
{
  # https://nixos.wiki/wiki/Man_pages
  environment.systemPackages = [
    pkgs.man-pages
    pkgs.man-pages-posix
  ];
  documentation.dev.enable = true;

  # https://nixos.wiki/wiki/Apropos
  documentation.man.cache.enable = true;
}
