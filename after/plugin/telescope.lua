local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fl", builtin.live_grep, {})

-- vim.keymap.set("n", "<leader>fs", function()
-- 	builtin.grep_string({ string = vim.fn.input("Grep > ") })
-- end)
