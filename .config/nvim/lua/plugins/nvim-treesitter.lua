return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" }, -- Loading only when a file is opened or new file is created

    config = function()
      require("nvim-treesitter.configs").setup {
        -- List of parsers need to installed
        ensure_installed = { "c", "bash", "cpp", "css", "git_config", "git_rebase", "gitcommit", "gitignore", "html", "javascript", "lua", "typescript", "yaml", "toml" },
        sync_install = false,

        -- Automatically installing missing parsers
        auto_install = true,

        -- syntax highlighting
        highlight = {
          enable = true,
       },

        -- enable indentation
        indent = { enable = true },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
          },
        },
        additional_vim_regex_highlighting = false,
      }
    end
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    version = false,
    lazy = false,

    config = function()
      require("treesitter-context").setup {
        enable = true,
        multiwindow = false,
        min_window_height = 1,
        line_numbers = false,
        multiline_threshold = 1, -- Maximum number of lines to show for a single context
        trim_scope = "outer",
        mode = "topline",
        seperator = "."
      }
    end
  },
}
