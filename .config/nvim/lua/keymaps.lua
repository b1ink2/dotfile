local opts = {
	noremap = true,
	silent = true,
}

-- leader key
vim.g.mapleader = " "


-- nvim-tree

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
