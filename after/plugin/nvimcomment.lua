require('nvim_comment').setup()

vim.keymap.set("n", "<C-_>", ":CommentToggle<CR>")
vim.keymap.set("x", "<C-_>", ":CommentToggle<CR>")
