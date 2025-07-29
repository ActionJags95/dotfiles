return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    version = "1.*",

    --@module 'blink.cmp'
    --@type blink.cmp.config

    opts = {
      keymap = {
        preset = "none",
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<CR>"] = { "accept", "fallback" },

        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
        ["<C-n>"] = { "select_next", "fallback_to_mappings" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
      },

      appearance = {
        nerd_font_variant = "normal",
      },

      cmdline = {
        keymap = {
          preset = "none",
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
          {
            border = "rounded",
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
          },
        },

        ghost_text = { enabled = false },

        -- Disable auto brackets
        accept = { auto_brackets = { enabled = false } },

        menu = {
          -- Don't automatically show the completion menu
          auto_show = true,

          -- Rounded borders
          border = "rounded",

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
