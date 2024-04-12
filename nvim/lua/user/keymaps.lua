-- Quickly clear search highlighting.
vim.keymap.set('n', '<leader>k', ':nohlsearch<CR>')

-- Close all open buffers.
vim.keymap.set('n', '<leader>Q', ':bufdo bdelete<CR>')
