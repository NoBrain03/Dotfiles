require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls","clangd","rust_analyzer","gopls"},
})


local on_attach = function(_,_)
	vim.keymap.set('n','<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n','<leader>nn', vim.lsp.buf.code_action, {})

	vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n','gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n','K',vim.lsp.buf.hover, {})
end

local capabilies = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
require("lspconfig").clangd.setup{
on_attach = on_attach,
capabilities = capabilities,
}

require'lspconfig'.pylsp.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}
--hyprland syntax highlighting
vim.filetype.add {
	extension = { rasi = 'rasi' },
	pattern = {
		['.*/waybar/config'] = 'jsonc',
		['.*/mako/config'] = 'dosini',
		['.*/kitty/*.conf'] = 'bash',
		['.*/hypr/.*%.conf'] = 'hyprlang',
	},
}
