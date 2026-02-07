{
  inputs,
  username,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "bak";
    extraSpecialArgs = {inherit inputs username;};

    users.${username} = {
      imports = [
        ../home-modules
      ];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "25.11";
      };
      nixpkgs.config.allowUnfree = true;
      programs.home-manager.enable = true;
    };
  };
  nix.settings.allowed-users = ["${username}"];
}
