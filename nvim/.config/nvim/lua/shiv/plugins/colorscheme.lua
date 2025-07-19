-- tokyonight theme--
-- return {
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       local bg = "#011628"
--       local bg_dark = "#011423"
--       local bg_highlight = "#143652"
--       local bg_search = "#0a64ac"
--       local bg_visual = "#275378"
--       local fg = "#cbe0f0"
--       local fg_dark = "#b4d0e9"
--       local fg_gutter = "#627e97"
--       local border = "#547998"
--
--       require("tokyonight").setup({
--         style = "night",
--         on_colors = function(colors)
--           colors.bg = bg
--           colors.bg_dark = bg_dark
--           colors.bg_float = bg_dark
--           colors.bg_highlight = bg_highlight
--           colors.bg_popup = bg_dark
--           colors.bg_search = bg_search
--           colors.bg_sidebar = bg_dark
--           colors.bg_statusline = bg_dark
--           colors.bg_visual = bg_visual
--           colors.border = border
--           colors.fg = fg
--           colors.fg_dark = fg_dark
--           colors.fg_float = fg
--           colors.fg_gutter = fg_gutter
--           colors.fg_sidebar = fg_dark
--         end,
--       })
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
-- -------------------------
-- monokai themes
-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		lazy = true,
-- 		opts = { style = "night" },
-- 	},
--
-- 	{
-- 		"catppuccin/nvim",
-- 		lazy = true,
-- 	},
--
-- 	{
-- 		"loctvl842/monokai-pro.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		keys = { { "<leader>c", "<cmd>monokaiproselect<cr>", desc = "select monokai pro filter" } },
-- 		opts = {
-- 			transparent_background = false,
-- 			devicons = true,
-- 			filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
-- 			-- day_night = {
-- 			-- 	enable = true,
-- 			-- 	day_filter = "pro",
-- 			-- 	night_filter = "classic",
-- 			-- },
-- 			inc_search = "underline", -- underline | background
-- 			background_clear = {
-- 				"nvim-tree",
-- 				-- "neo-tree",
-- 				"bufferline",
-- 				-- "telescope",
-- 				"toggleterm",
-- 			},
-- 			plugins = {
-- 				bufferline = {
-- 					underline_selected = true,
-- 					underline_visible = false,
-- 					underline_fill = true,
-- 					bold = false,
-- 				},
-- 				indent_blankline = {
-- 					context_highlight = "pro", -- default | pro
-- 					context_start_underline = true,
-- 				},
-- 			},
-- 			override = function(c)
-- 				return {
-- 					-- colorcolumn = { bg = c.editor.background },
-- 					-- mine
-- 					dashboardrecent = { fg = c.base.magenta },
-- 					dashboardproject = { fg = c.base.blue },
-- 					dashboardconfiguration = { fg = c.base.white },
-- 					dashboardsession = { fg = c.base.green },
-- 					dashboardlazy = { fg = c.base.cyan },
-- 					dashboardserver = { fg = c.base.yellow },
-- 					dashboardquit = { fg = c.base.red },
-- 					indentblanklinechar = { fg = c.base.dimmed4 },
-- 					neotreestatusline = { link = "statusline" },
-- 					-- mini.hipatterns
-- 					minihipatternsfixme = { fg = c.base.black, bg = c.base.red, bold = true }, -- fixme
-- 					minihipatternstodo = { fg = c.base.black, bg = c.base.blue, bold = true }, -- todo
-- 					minihipatternshack = { fg = c.base.black, bg = c.base.yellow, bold = true }, -- hack
-- 					minihipatternsnote = { fg = c.base.black, bg = c.base.green, bold = true }, -- note
-- 					minihipatternswip = { fg = c.base.black, bg = c.base.cyan, bold = true }, -- wip
-- 				}
-- 			end,
-- 			overridepalette = function(filter)
-- 				if filter == "pro" then
-- 					return {
-- 						dark2 = "#101014",
-- 						dark1 = "#16161e",
-- 						background = "#1a1b26",
-- 						text = "#c0caf5",
-- 						accent1 = "#f7768e",
-- 						accent2 = "#7aa2f7",
-- 						accent3 = "#e0af68",
-- 						accent4 = "#9ece6a",
-- 						accent5 = "#0db9d7",
-- 						accent6 = "#9d7cd8",
-- 						dimmed1 = "#737aa2",
-- 						dimmed2 = "#787c99",
-- 						dimmed3 = "#363b54",
-- 						dimmed4 = "#363b54",
-- 						dimmed5 = "#16161e",
-- 					}
-- 				end
-- 			end,
-- 		},
-- 		config = function(_, opts)
-- 			local monokai = require("monokai-pro")
-- 			monokai.setup(opts)
-- 			monokai.load()
-- 		end,
-- 	},
-- }
-- -
---------------------------------------------
-- catppuccin_colorsreturn {
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = false, --true | false
			term_colors = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = { "bold" },
				keywords = { "bold", "italic" },
				strings = {},
				variables = {},
				numbers = {},
				booleans = { "bold" },
				properties = {},
				types = { "bold", "italic" },
			},
			integrations = {
				-- Support for various plugins (enabled or disabled)
				telescope = true,
				treesitter = true,
				which_key = true,
				indent_blankline = {
					enabled = true,
					colored_indent_levels = false,
				},
				-- Add any other plugins you use here
				nvimtree = {
					enabled = true,
					-- transparent_background = true,
				},
				bufferline = true,
				gitsigns = true,
				lsp_saga = true,
				lsp_trouble = true,
				native_lsp = {
					enabled = true,
					underline = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
				},
			},
			custom_highlights = function(colors)
				return {
					-- Normal = { bg = "NONE" }, -- Make normal background transparent
					-- NormalFloat = { bg = "NONE" }, -- Floating windows background transparent
					CursorLine = { bg = colors.surface0 },
					CursorLineNr = { fg = colors.flamingo, style = { "bold" } },
					TelescopeBorder = { fg = colors.mauve },
					TelescopePromptTitle = { fg = colors.red },
					TelescopeResultsTitle = { fg = colors.green },
					TelescopePreviewTitle = { fg = colors.blue },
					-- Custom Dashboard Colors
					DashboardHeader = { fg = colors.blue },
					DashboardCenter = { fg = colors.lavender },
					DashboardFooter = { fg = colors.teal, style = { "italic" } },
				}
			end,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
------------------------------------------------------------------------------------------
---dracula theme
--return {
-- add dracula
--	{ "Mofiqul/dracula.nvim" },

-- Configure LazyVim to load dracula
--	{
--		"LazyVim/LazyVim",
--		colorscheme = "dracula",
--	},
--	},
--}
