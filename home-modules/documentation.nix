{ ... }:
{
  programs = {
    man = { # only for home manager packages
      enable = true;
      generateCaches = true;
    };
  };
}
