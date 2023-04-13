local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
	lsp.buffer_autoformat()
end)

lsp.ensure_installed({
	"tsserver",
	"eslint",
})

local cmp = require("cmp")

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-Space>"] = cmp.mapping.complete(),
	["<C-k>"] = cmp.mapping.scroll_docs(-4),
	["<C-j>"] = cmp.mapping.scroll_docs(4),
	["<CR>"] = cmp.mapping.confirm({
		behavior = cmp.ConfirmBehavior.Replace,
		select = true,
	}),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

lsp.setup()
