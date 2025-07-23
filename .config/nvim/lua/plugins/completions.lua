return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    version = '1.*',

    --@module 'blink.cmp'
    --@type blink.cmp.config

    opts = {
      keymap = { preset = "default" },

      appearance = {
        nerd_font_variant = 'normal'
      },

      cmdline = {
        keymap = { preset = "inherit" },
        completion = {
          menu = { auto_show = true},
          ghost_text = { enabled = true },
        },
      },

      completion = {
        keyword = { range = 'full' },

        documentation = { auto_show = true, auto_show_delay_ms = 0 },

        ghost_text = { enabled = true },

        -- Disable auto brackets
        accept = { auto_brackets = { enabled = false } },

        menu = {
          -- Don't automatically show the completion menu
          auto_show = true,

          -- nvim-cmp style completion menu
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              {"kind_icon", "kind" }
            },
          },
        },


      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },

    opts_extended = { "sources.default" }
  },
}
