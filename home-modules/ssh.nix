{...}: {
  services.ssh-agent = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;
  };

  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github-personal" = {
        identityFile = "~/.ssh/github-personal.pub";
        user = "cleran";
        hostname = "ssh.github.com";
      };
    };
  };
}
