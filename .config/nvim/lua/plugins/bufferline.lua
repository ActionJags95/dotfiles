return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",

	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "buffers",
				style_preset = bufferline.style_preset.default,
				separator_style = "slant",

				-- Offset to have VS Code like UI
				offsets = {
					{
						filetype = "neo-tree",
						text = "FileExplorer",
						highlight = "Directory",
						text_align = "left",
						seperator = true,
						separator_style = "slant",
					},
				},
			},
		})
	end,
}
