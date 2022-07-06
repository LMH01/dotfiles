map = vim.api.nvim_set_keymap

-- Use <c-space> to trigger completion.
map("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
-- symbol renaming
map("n", "-n", "<Plug>(coc-rename)", { silent = true })
-- symbol renaming
map("n", "-n", "<Plug>(coc-rename)", { silent = true })
-- apply AutoFix to problem on current line
map("n", "-f", "<Plug>(coc-fix-current)", { silent = true })
-- open action dialog
map("n", "-a", ":CocAction<CR>", { silent = true })

-- telescope
map("n", "ff", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "fg", "<cmd>Telescope live_grep<cr>", { silent = true })
