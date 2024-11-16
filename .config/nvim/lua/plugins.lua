local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'

Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'folke/tokyonight.nvim'

vim.call('plug#end')

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({})

-- lualine
require('lualine').setup({
	options = {theme = 'palenight'},
})

-- vim-easycomplete
vim.g.easycomplete_enable = 1
vim.g.easycomplete_nerd_font = 1

-- tokyonight (themes)
vim.cmd[[colorscheme tokyonight]]


