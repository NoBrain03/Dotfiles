require("jesus.remap")
require("jesus.lazy")
vim.wo.number = true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.keymap.set("n","<leader>cc",'<cmd>!gcc -Wall % && ./a.out<cr>')
vim.keymap.set("n","<leader>cm",'<cmd>!make clean all && ./a.out<cr>')
vim.keymap.set("n","<leader>gl", '<cmd>%!gofmt<cr>')
vim.keymap.set("n","<leader>gc", '<cmd>%!clang-format<cr>')
