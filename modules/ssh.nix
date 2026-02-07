{...}: {
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = false;
   };

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;
}
