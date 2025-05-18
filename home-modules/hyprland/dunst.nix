{...}: {
  services.dunst = {
    enable = true;
    settings = {
      global = {
        corner_radius = 3;
        frame_width = 2;
      };
    };
  };
}
