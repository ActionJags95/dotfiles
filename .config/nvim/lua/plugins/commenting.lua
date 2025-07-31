return {
  {
    "echasnovski/mini.comment",
    version = false,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },

    config = function()
      require("ts_context_commentstring").setup({
        enable_autocmd = false,
      })

      require("mini.comment").setup({
        -- tsx, jsx, html, svelte comment support
        options = {
          custom_commentstring = function()
            return require("ts_context_commentstring.internal").calculate_commentstring({
              key = "commentstring",
            }) or vim.bo.commentstring
          end,
        },

        mappings = {
          comment_line = "<C-_>",
          comment_visual = "<C-_>",
        },
      })
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
}
