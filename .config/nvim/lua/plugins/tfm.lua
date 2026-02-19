return {
  "rolv-apneseth/tfm.nvim",
  lazy = false,
  opts = {
    file_manager = "yazi",
    replace_netrw = true,
    keybindings = {
      ["<ESC>"] = "q",
    },
    ui = {
      border = "rounded",
      height = 2,
      width = 2,
    },
  },
  config = function()
    -- Set keymap so you can open the default terminal file manager (yazi)
    vim.api.nvim_set_keymap("n", "<leader>e", "", {
      silent = true,
      noremap = true,
      callback = require("tfm").open,
      desc = "Open file manager",
    })
  end,
}
