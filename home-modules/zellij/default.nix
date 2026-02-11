{ config, flakeDirectory, ... }:
{
  programs.zellij.enable = true;
  xdg.configFile = {
    "zellij/layouts/".source = config.lib.file.mkOutOfStoreSymlink "${flakeDirectory}/home-modules/zellij/layouts/";
  };
}
