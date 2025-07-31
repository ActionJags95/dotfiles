return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    vim.keymap.set(
      "n",
      "<leader>th",
      ":ToggleTerm direction=horizontal<CR>",
      { noremap = true, silent = true, desc = "Toggle horizontal terminal" }
    ),
    vim.keymap.set(
      "n",
      "<leader>tv",
      ":ToggleTerm direction=vertical<CR>",
      { noremap = true, silent = true, desc = "Toggle vertical terminal" }
    ),
    vim.keymap.set(
      "n",
      "<leader>tf",
      ":ToggleTerm direction=float<CR>",
      { noremap = true, silent = true, desc = "Toggle float terminal" }
    ),
  },
}
