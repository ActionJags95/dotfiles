return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  -- use a release tag to download pre-built binaries
  version = "1.*",
  build = "cargo build --release",

  opts = {
    appearance = {
      use_nvim_cmp_as_default = false,

      -- Font variant
      nerd_font_variant = "normal",
    },

    completion = {
      menu = {
        draw = {
          treesitter = { "lsp" },
        },
      },
      documentation = {
        -- Automatically show documentation menu
        auto_show = true,

        -- Immediately show docs menu
        auto_show_delay_ms = 0,
      },
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      ghost_text = {
        enabled = vim.g.ai_cmp,
      },
    },

    cmdline = {
      enabled = true,
      completion = {
        ghost_text = { enabled = true },
      },
      keymap = { preset = "inherit" },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    -- Enabling function signature
    signature = {
      enabled = true,
      window = {
        show_documentation = true,
        treesitter_highlighting = true,
      },
    },

    fuzzy = {
      implementation = "prefer_rust",
    },

    keymap = {
      preset = "default",
    },
  },
}
