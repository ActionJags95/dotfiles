return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
    },
    version = "1.*",

    --@module 'blink.cmp'
    --@type blink.cmp.config

    opts = {
      -- Settings snippet engine
      -- snippets = { preset = "luasnip" },

      --Keymap options
      keymap = {
        preset = "default",
      },

      appearance = {
        nerd_font_variant = "normal",
      },

      cmdline = {
        keymap = {
          preset = "default",
        },
        completion = {
          menu = { auto_show = true },
          ghost_text = { enabled = true },
        },
      },

      completion = {
        keyword = { range = "full" },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 0,
          window = {
            border = "rounded",
          },
        },

        ghost_text = { enabled = false },

        -- Disable auto brackets
        accept = { auto_brackets = { enabled = false } },

        menu = {
          -- Rounded border
          border = "rounded",

          -- Don't automatically show the completion menu
          auto_show = true,

          -- nvim-cmp style completion menu
          draw = {

            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" },
            },
          },
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" },
    },

    opts_extended = { "sources.default" },
  },
}
