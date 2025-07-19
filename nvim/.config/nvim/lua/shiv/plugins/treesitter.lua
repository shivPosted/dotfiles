-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	build = ":TSUpdate",
-- 	dependencies = {
-- 		"windwp/nvim-ts-autotag",
-- 	},
-- 	config = function()
-- 		-- import nvim-treesitter plugin
-- 		local treesitter = require("nvim-treesitter.configs")
--
-- 		-- configure treesitter
-- 		treesitter.setup({ -- enable syntax highlighting
-- 			highlight = {
-- 				enable = true,
-- 			},
-- 			-- enable indentation
-- 			indent = { enable = true },
-- 			-- enable autotagging (w/ nvim-ts-autotag plugin)
-- 			autotag = {
-- 				enable = true,
-- 			},
-- 			-- ensure these language parsers are installed
-- 			ensure_installed = {
-- 				"json",
-- 				"javascript",
-- 				"typescript",
-- 				"tsx",
-- 				"yaml",
-- 				"html",
-- 				"css",
-- 				"prisma",
-- 				"markdown",
-- 				"markdown_inline",
-- 				"svelte",
-- 				"graphql",
-- 				"bash",
-- 				"lua",
-- 				"vim",
-- 				"dockerfile",
-- 				"gitignore",
-- 				"query",
-- 				"vimdoc",
-- 				"c",
-- 			},
-- 			incremental_selection = {
-- 				enable = true,
-- 				keymaps = {
-- 					init_selection = "<C-space>",
-- 					node_incremental = "<C-space>",
-- 					scope_incremental = false,
-- 					node_decremental = "<bs>",
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true, -- enable syntax highlighting
			},
			indent = { enable = true }, -- enable indentation
			autotag = {
				enable = true, -- enable autotagging (with nvim-ts-autotag)
			},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			-- Add these fields to avoid warnings
			sync_install = false, -- Install parsers synchronously (false by default)
			auto_install = true, -- Automatically install missing parsers when entering buffer
			ignore_install = {}, -- List of parsers to ignore during installation
		})
	end,
}
