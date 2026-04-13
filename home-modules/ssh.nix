{...}: {
  services.ssh-agent = {
    enable = true;
  };

  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github-personal" = {
        identityFile = "~/.ssh/github-personal";
        user = "git";
        hostname = "ssh.github.com";
        identitiesOnly = true;
      };
    };
  };
}
