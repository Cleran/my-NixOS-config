{username, ...}: {
  services.syncthing = {
    enable = true;
    user = "${username}"; 
    dataDir = "/home/${username}";
    overrideDevices = false; # if set to false, allows the Webinterface to change devices
    overrideFolders = false; # if set to false, allows the Webinterface to change folders
    settings.devices = {
      "Pixel 7a" = { # main device to sync devices
        # phone id can be public because the phone has to also add the remote device
        id = "XUV23TC-JLIXNKK-CUCUQCN-2PBV2DW-ZBZEFV6-QYKXWAF-4BOFFPC-ODZHYA3"; 
        autoAcceptFolders = true;
        introducer = true;
        compression = "always";
      };
    };
  };
}
