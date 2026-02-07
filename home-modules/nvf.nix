{inputs, lib, ...}: {
  imports = [inputs.nvf.homeManagerModules.default];

  home.sessionVariables.EDITOR = "nvim";

  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = false;
      vimAlias = true;

      globals = {
        mapleader = " ";
      };

      options = {
        tabstop = 2;
        shiftwidth = 0; # if set to 0 it follows tabstop
        expandtab = true; # expands tabs to spaces
        wrap = false;
        cursorline = true;
        cursorlineopt = "both";
        confirm = true; # opens confirmation window when exiting a buffer without saving
        smartcase = true; # enable case sensitive search when using upper case letters
      };

      lsp = {
        formatOnSave = false;
        enable = true;
        inlayHints.enable = true;
        trouble.enable = true;
      };

      languages = {
        enableExtraDiagnostics = true;
        enableFormat = true;
        enableTreesitter = true;

        nix.enable = true;
        css.enable = true;
        lua.enable = true;
        markdown.enable = true;
        html.enable = true;
        nu.enable = true;
      };

      diagnostics = {
        enable = true;
        config = {
          virtual_lines = true;
        };
      };

      mini = {
        icons.enable = true;
        git.enable = true;
        diff.enable = true;
        hipatterns.enable = true;
        snippets.enable = true;
        # completion.enable = true;
        pairs.enable = true;
        surround.enable = true;
      };

      autocomplete.blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
      };

      statusline = {
        lualine = {
          enable = true;
        };
      };

      theme = lib.mkForce {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };

      filetree.neo-tree.enable = true;
      dashboard.dashboard-nvim.enable = true;

      # spellcheck.enable = true;

      visuals = {
        indent-blankline.enable = true;
        indent-blankline.setupOpts.exclude.filetypes = ["dashboard"];
      };

      notify = {
        nvim-notify.enable = true;
      };

      formatter.conform-nvim.enable = true;
      telescope.enable = true;
      comments.comment-nvim.enable = true;

      binds = {
        whichKey.enable = true;
        cheatsheet.enable = true;
      };

      # utility.surround = {
      #   enable = true;
      #   useVendoredKeybindings = false;
      #   setupOpts = {
      #     keymaps = {
      #       insert = "<C-g>s";
      #       insert_line = "<C-g>S";
      #       normal = "ys";
      #       normal_cur = "yss";
      #       normal_line = "yS";
      #       normal_cur_line = "ySS";
      #       visual = "S";
      #       visual_line = "gS";
      #       delete = "ds";
      #       change = "cs";
      #       change_line = "cS";
      #     };
      #   };
      # };

      keymaps = [
        {
          key = "<leader>dt";
          mode = ["n"];
          action = "<cmd>Trouble diagnostics toggle<cr>";
          desc = "Toggle diagnostics list";
        }
        {
          key = "<leader>ff";
          mode = ["n"];
          action = "<cmd>Telescope find_files<cr>";
          desc = "Fuzzy find files";
        }
        {
          key = "<leader>e";
          mode = ["n"];
          action = "<cmd>Neotree float<cr>";
          desc = "Open floating Neotree window";
        }
        {
          key = "<C-h>";
          mode = ["i"];
          action = "<Left>";
          desc = "Move left in insert mode";
        }
        {
          key = "<C-j>";
          mode = ["i"];
          action = "<Down>";
          desc = "Move down in insert mode";
        }
        {
          key = "<C-k>";
          mode = ["i"];
          action = "<Up>";
          desc = "Move up in insert mode";
        }
        {
          key = "<C-l>";
          mode = ["i"];
          action = "<Right>";
          desc = "Move right in insert mode";
        }
      ];
    };
  };
}
