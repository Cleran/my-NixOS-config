{...}: {
  xdg = {
    enable = true;
    autostart.enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
    };
    mimeApps = {
      enable = true;
      defaultApplications = {
        "video/*" = "vlc.desktop";
        "audio/*" = "vlc.desktop";
        "image/*" = "qimgv.desktop";
      };
    };
  };
}
