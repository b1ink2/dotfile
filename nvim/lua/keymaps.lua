local opts = { noremap = true, silent = true }

-- leader key
vim.g.mapleader = " "

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- opencode.nvim
vim.keymap.set({ "n", "x" }, "<leader>oa", function()
  require("opencode").ask("@this: ", { submit = true })
end, { desc = "Ask opencode" })

vim.keymap.set({ "n", "x" }, "<leader>oo", function()
  require("opencode").select()
end, { desc = "Select opencode" })

vim.keymap.set("n", "<leader>ot", function()
  vim.fn.jobstart({ 'tmux', 'split-window', '-h', 'opencode', '--port' }, { detach = true })
end, { desc = "Open opencode in tmux" })

-- buffers 
vim.keymap.set("n", "<leader>bn", ":BufferNext<CR>", opts)
vim.keymap.set("n", "<leader>bp", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<leader>bc", ":BufferClose<CR>", opts)
vim.keymap.set("n", "<leader>bo", ":BufferCloseAllButCurrent<CR>", opts)
vim.keymap.set("n", "<leader>bl", ":BufferMoveNext<CR>", opts)
vim.keymap.set("n", "<leader>bh", ":BufferMovePrevious<CR>", opts)

-- navigation: move by visual lines
vim.keymap.set({ "n", "x" }, "j", "gj", opts)
vim.keymap.set({ "n", "x" }, "k", "gk", opts)

-- vim.lspconfig
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
