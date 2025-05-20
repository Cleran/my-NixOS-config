{...}: {
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "video/*" = "vlc.desktop";
      "audio/*" = "vlc.desktop";
      "image/*" = "qimgv.desktop";
    };
  };
}
