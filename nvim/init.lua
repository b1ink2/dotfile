require('vim._core.ui2').enable({
    enable = true,
})

vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/folke/tokyonight.nvim',
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nickjvandyke/opencode.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/romgrk/barbar.nvim',
  'https://github.com/folke/which-key.nvim',
  'https://github.com/williamboman/mason.nvim',
  'https://github.com/williamboman/mason-lspconfig.nvim',
})


require('options')
require('plugins')
require('keymaps')
require('lsp')
