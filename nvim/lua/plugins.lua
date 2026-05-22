-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('nvim-tree').setup({})

-- lualine
require('lualine').setup({
	options = {
		theme = 'palenight',
		disabled_filetypes = {
      statusline = { 'NvimTree' },
    },
	},
})

-- barbar
require('barbar').setup{
	animation = true,
	auto_hide = false,
	tabpages = true,
	sidebar_filetypes = {
		NvimTree = true,
	},
}

-- opencode.nvim
vim.g.opencode_opts = {}

-- tokyonight
vim.cmd.colorscheme('tokyonight')

-- which-key
require('which-key').setup()

-- mason
require('mason').setup()

-- mason-lspconfig
require('mason-lspconfig').setup({
  ensure_installed = {},
  automatic_installation = true,
})
