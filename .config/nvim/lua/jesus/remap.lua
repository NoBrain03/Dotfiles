vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pa", vim.cmd.Ex)
vim.keymap.set("n", "S-yy","<cmd>wqa")


--compilen
	--c & c++
	vim.keymap.set("n","<leader>cc",'<cmd>!gcc -pipe -Wall -o program % && ./program <cr>')
	vim.keymap.set("n","<leader>cp",'<cmd>%!g++ -Wall && ./a.out<cr>')
	vim.keymap.set("n","<leader>cm",'<cmd>!make clean all && ./a.out<cr>')
	-- rust
	vim.keymap.set("n","<leader>cr",'<cmd>%!rustc && ./main <cr>')
	-- pyhton
	vim.keymap.set("n","<leader>pc","<cmd>%!python3<cr>")
	-- format
	vim.keymap.set("n","<leader>gl", '<cmd>%!gofmt<cr>')
	vim.keymap.set("n","<leader>gc", '<cmd>%!clang-format<cr>')
	vim.keymap.set("n","<leader>fj", '<cmd>%!python -m json.tool<cr>')
	vim.keymap.set("i","(",'()<ESC>i')
	vim.keymap.set("i","/*",'/*  */<ESC>bhi')
	vim.keymap.set("i","[",'[]<ESC>i')
	vim.keymap.set("i","{",'{}<ESC>i')

vim.keymap.set("n", "<leader>tt", function()
	vim.cmd('split')
	vim.cmd('wincmd J')
	vim.cmd('terminal')
	vim.cmd('resize 15')

end)
