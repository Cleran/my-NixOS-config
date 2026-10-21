{
  inputs,
  lib,
  pkgs,
  ...
}:
{
  imports = [ inputs.niri.nixosModules.niri ];
  nixpkgs.overlays = [ inputs.niri.overlays.niri ];

  programs.niri = {
    enable = lib.mkDefault true;
    package = pkgs.niri;
  };
  systemd.user.services.niri-flake-polkit.enable = false; # avoid conflict with dms built-in polkit agent
	
  environment.systemPackages = with pkgs; [
		wl-mirror
  ];
}
