local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-o>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(),{'i','s'}),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(),{'i','s'}),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
		{name = 'path'},

	}, {
		{name = 'buffer'},
	}),
	window = {
	documentation = cmp.config.window.bordered(),
	}
})
