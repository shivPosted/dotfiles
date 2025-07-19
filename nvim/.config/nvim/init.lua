require("shiv.core")
require("shiv.lazy")

vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "YankHighlight",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})
-- Save the current buffer when leaving insert mode or losing focus
-- vim.api.nvim_create_autocmd({ "FocusLost", "WinLeave" }, {
-- 	pattern = "*",
-- 	command = "silent! wa",
-- })

vim.api.nvim_set_keymap("n", "<leader>wa", ":wa<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>qa", ":qa<CR>", { noremap = true, silent = true })
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Prevent all folds from being closed when you open a file
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
