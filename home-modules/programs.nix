{ pkgs, ... }:
{
  home.sessionVariables.BROWSER = "brave";

  home.packages = with pkgs; [
    qimgv
    bat-extras.batman
    gedit
    yt-dlp
    vlc

    xournalpp

    julia

	javaPackages.compiler.openjdk21
  ];

  programs = {
    # GUI
    firefox.enable = false;
    brave.enable = true;

    obsidian.enable = true;

    vscode.enable = true;
    zed-editor.enable = true;

    zathura.enable = true;

    discord.enable = true;

    thunderbird = {
      enable = true;
      profiles."Default" = {
        isDefault = true;
      };
    };

	prismlauncher.enable = true;

    # CLI
    fzf.enable = true;
    btop.enable = true;
    bat.enable = true;
    zoxide = {
      enable = true;
    };
    eza = {
      enable = true;
      icons = "auto";
    };
    jq.enable = true;
    fd.enable = true;
    fastfetch.enable = true;

    yazi = {
      enable = true;
      enableNushellIntegration = true;
      enableBashIntegration = true;
      shellWrapperName = "y";
    };

    lazygit.enable = true;

    direnv = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
      enableNushellIntegration = true;

      nix-direnv.enable = true;
    };

    tmux.enable = true;
  };
}
