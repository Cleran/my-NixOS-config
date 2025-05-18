{pkgs,...}: {
  home.packages = with pkgs; [
    qimgv
    bat-extras.batman
    gedit
    yt-dlp
  ];

	programs = {
    # GUI
		firefox.enable = false;
    brave.enable = true;

    zathura.enable = true;

    # CLI
    fzf.enable = true;
    btop.enable = true;
    bat.enable = true;
    zoxide = {
      enableBashIntegration = true;
      enableNushellIntegration = true;
      enable = true;
    };
    eza = {
      enable = true;
      icons = "auto";
    };
    jq.enable = true;
    fd.enable = true;
    fastfetch.enable = true;

    yazi.enable = true;

    lazygit.enable = true;
	};
}
