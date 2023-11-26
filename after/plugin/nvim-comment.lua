require("nvim_comment").setup()

-- Normal mode mapping
vim.api.nvim_set_keymap("n", "<C-_>", [[:CommentToggle<CR>]], { noremap = true, silent = true })

-- Visual line mode mapping
vim.api.nvim_set_keymap("x", "<C-_>", [[:CommentToggle<CR>]], { noremap = true, silent = true })
