vim.pack.add({
	{ src = "https://github.com/goolord/alpha-nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[╔══════════════════════════════════════════════════════╗]],
	[[║                                                      ║]],
	[[║  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ║]],
	[[║  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ║]],
	[[║  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ║]],
	[[║  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ║]],
	[[║  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ║]],
	[[║  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ║]],
	[[║                                                      ║]],
	[[╚══════════════════════════════════════════════════════╝]],
	[[                                                        ]],
	[[                                                        ]],
}

dashboard.section.buttons.val = {
	dashboard.button("ff", "  Find File", ":Telescope find_files<CR>"),
	dashboard.button("fo", "  Recent Files", ":Telescope old_files<CR>"),
	dashboard.button("fw", "󰈭  Find Word", ":Telescope live_grep<CR>"),
	dashboard.button("r", "  Restore Session", ":AutoSession restore<CR>"),
	dashboard.button("q", "󰅗  Close Neovim", ":q<CR>"),
}

alpha.setup(dashboard.config)
