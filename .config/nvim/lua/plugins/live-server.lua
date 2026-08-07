vim.pack.add({
	"https://git.barrettruth.com/barrettruth/live-server.nvim",
})

vim.g.live_server = {
	port = 8080,
	browser = false,
}

vim.keymap.set(
	"n",
	"<leader>ls",
	":LiveServerToggle<CR>",
	{ desc = "Toggle Live-Server in current directory", silent = true, noremap = true }
)
