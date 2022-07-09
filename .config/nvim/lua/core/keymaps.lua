local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<A-1>", ":LualineBuffersJump 1<cr>", opt)
map("n", "<A-2>", ":LualineBuffersJump 2<cr>", opt)
map("n", "<A-3>", ":LualineBuffersJump 3<cr>", opt)
map("n", "<A-4>", ":LualineBuffersJump 4<cr>", opt)
map("n", "<A-5>", ":LualineBuffersJump 5<cr>", opt)
map("n", "<A-6>", ":LualineBuffersJump 6<cr>", opt)
map("n", "<A-7>", ":LualineBuffersJump 7<cr>", opt)
map("n", "<A-8>", ":LualineBuffersJump 8<cr>", opt)
