return {
	-- move blocks of code around when visual selected + auto indent
	vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
	vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv"),
	
	-- Centering on page jump
	vim.keymap.set("n", "<C-d>", "<C-d>zz"),
	vim.keymap.set("n", "<C-u>", "<C-u>zz"),
	
	-- centering when clicking 'n' or 'N' to jump to next search
	vim.keymap.set("n", "n", "nzzzv"),
	vim.keymap.set("n", "N", "Nzzzv"),

	-- repalce-paste without overwriting yank buffer
	vim.keymap.set("x", "<leader>p", "\"_dP"),

	-- yank to sys clipboard
	vim.keymap.set("n", "<leader>y", "\"+y"),
	vim.keymap.set("v", "<leader>y", "\"+y"),
	vim.keymap.set("n", "<leader>Y", "\"+Y"),
	
	-- quick fix navigation binds
	vim.keymap.set("n", "<C-k", "<cmd>cnext<CR>zz"),
	vim.keymap.set("n", "<C-j", "<cmd>cprev<CR>zz"),
	vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz"),
	vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz"),

	-- search and replace word under cursor
	vim.keymap.set("n", "<leader>s",":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>"),
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) 
}
