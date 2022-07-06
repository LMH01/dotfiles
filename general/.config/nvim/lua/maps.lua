map = vim.api.nvim_set_keymap

-- telescope
map("n", "ff", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "fg", "<cmd>Telescope live_grep<cr>", { silent = true })
