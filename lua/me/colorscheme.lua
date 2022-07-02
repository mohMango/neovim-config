local colorscheme = "nightfox" -- OceanicNext, gruvbox8, nightfox or tokyonight

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

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
