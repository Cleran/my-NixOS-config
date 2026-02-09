{pkgs,...}: {
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = ["nix-command" "flakes" "pipe-operators"];

  ####### workaround to get the function keys working on a thinkpad e14 gen 2 (amd)
  # see wiki.archlinux.org/title/Lenovo_ThinkPad_E14_Gen_2_(AMD)
  # using systemd timers as an alternative to cron nixos.wiki/wiki/Systemd/Timers
  systemd.timers."startup-sleep" = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnBootSec = "2";
      Unit = "startup-sleep.service";
    };
  };

  systemd.services."startup-sleep" = {
    script = ''
      ${pkgs.util-linux}/bin/rtcwake -m mem -s 2
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "root";
    };
  };
  #######


  system.stateVersion = "25.11";
}
