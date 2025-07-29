return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		vim.keymap.set("n", "<leader>tth", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true }),
		vim.keymap.set("n", "<leader>ttv", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true }),
		vim.keymap.set("n", "<leader>ttf", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true }),
	},
}
