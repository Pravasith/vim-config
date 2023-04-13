function ColorMyPencils(color)
	color = color or "gruvbox-baby"
	vim.g.gruvbox_baby_telescope_theme = 1
	vim.g.gruvbox_baby_transparent_mode = 1
	vim.g.gruvbox_baby_highlights = { Visual = { fg = "#ffffff", bg = "#458588", style = "NONE" } }
	vim.g.gruvbox_baby_color_overrides = {
		soft_green = "#38ba5b",
	}
	vim.cmd.colorscheme(color)

	vim.cmd("highlight String guifg=#8ec07c")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
