{ ... }:
{
  services.ssh-agent = {
    enable = true;
  };

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    matchBlocks = {
      "github-personal" = {
        identityFile = "~/.ssh/github-personal";
        user = "git";
        hostname = "ssh.github.com";
        identitiesOnly = true;
      };
    };

    matchBlocks."*" = {
      # Connection reuse
      controlMaster = "auto";
      controlPersist = "10m";

      # Keep connections alive
      serverAliveInterval = 30;
      serverAliveCountMax = 3;

      # Key handling
      addKeysToAgent = "yes";
      identitiesOnly = false;

      # Security
      hashKnownHosts = true;

      # Optional: enable compression on slow links
      compression = false;
    };
  };
}
