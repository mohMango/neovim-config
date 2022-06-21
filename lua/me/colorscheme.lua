local colorscheme = "nightfox" -- OceanicNext or gruvbox8

require("nightfox").setup({
	options = {
		transparent = true, -- Disable setting background
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		},
	},
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
