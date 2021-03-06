local null_ls = require("null-ls")
local utils = require("lsp/utils")
local common_on_attach = utils.common_on_attach

null_ls.config({
	-- you must define at least one source for the plugin to work
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.write_good,
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.stylelint,
	},
})

require("lspconfig")["null-ls"].setup({
	on_attach = function(client)
		common_on_attach(client)
	end,
})
