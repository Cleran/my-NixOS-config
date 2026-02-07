{...}: {
  programs.git = {
    enable = true;
    settings = {
      user.name = "Cleran";
      user.email = "cleran.brulius@gmail.com";
      init.defaultBranch = "main";
    };
  };
}
