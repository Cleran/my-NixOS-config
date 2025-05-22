{...}: {
  programs.nushell = {
    enable = true;
    shellAliases = { # adds shell specific aliases. for generic aliases use home.shellAliases instead
    };
    extraConfig = "
      $env.config.show_banner = false
    ";
  };
  home.shell.enableNushellIntegration = true; # also sets integration for alot of cli programs
}
