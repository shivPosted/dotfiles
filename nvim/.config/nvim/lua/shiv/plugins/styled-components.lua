return {
	"styled-components/vim-styled-components",
	branch = "main",
	config = function()
		-- Enable styled-components syntax highlighting
		vim.g.styled_components = 1

		-- Enable auto-indentation for styled-components
		vim.g.styled_components_autoindent = 1

		-- Ensure proper filetype detection for JS/TS files
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
			callback = function()
				vim.bo.filetype = "javascript.jsx"
			end,
		})

		-- Optional custom highlights for styled-components
		vim.cmd([[
			hi def StyledBlock guibg=#282c34
			hi def StyledInterpolation guibg=#3e4451 guifg=#abb2bf
		]])
	end,
}
