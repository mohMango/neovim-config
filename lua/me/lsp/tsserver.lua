local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

lspconfig.tsserver.setup({
	on_attach = require("me.lsp.handlers").on_attach,
	root_dir = lspconfig.util.root_pattern("package.json"),
})
