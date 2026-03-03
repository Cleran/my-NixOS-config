{lib,hostName,pkgs,...}: {

  programs.mtr.enable = true; # network diagnostics

  networking.hostName = lib.mkDefault "${hostName}"; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;
  
  environment.systemPackages = [
    pkgs.networkmanagerapplet
  ];
}
