-- return {
-- "nvim-lualine/lualine.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local lualine = require("lualine")
-- 		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
--
-- 		local colors = {
-- 			blue = "#65d1ff",
-- 			green = "#3effdc",
-- 			violet = "#ff61ef",
-- 			yellow = "#ffda7b",
-- 			red = "#ff4a4a",
-- 			fg = "#c3ccdc",
-- 			bg = "#112638",
-- 			inactive_bg = "#2c3043",
-- 		}
--
-- 		local my_lualine_theme = {
-- 			normal = {
-- 				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			insert = {
-- 				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			visual = {
-- 				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			command = {
-- 				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			replace = {
-- 				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			inactive = {
-- 				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
-- 				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
-- 				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
-- 			},
-- 		}
--
-- 		-- configure lualine with modified theme
-- 		lualine.setup({
-- 			options = {
-- 				theme = my_lualine_theme,
-- 			},
-- 			sections = {
-- 				lualine_x = {
-- 					{
-- 						lazy_status.updates,
-- 						cond = lazy_status.has_updates,
-- 						color = { fg = "#ff9e64" },
-- 					},
-- 					{ "encoding" },
-- 					{ "fileformat" },
-- 					{ "filetype" },
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
-----------------------------------
--lualine for monokai pro
-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local lualine = require("lualine")
-- 		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
--
-- 		local colors = {
-- 			blue = "#66d9ef",
-- 			green = "#a6e22e",
-- 			violet = "#ae81ff",
-- 			yellow = "#f4bf75",
-- 			red = "#f92672",
-- 			fg = "#f8f8f2",
-- 			bg = "#272822",
-- 			inactive_bg = "#1e1f1a",
-- 			gray = "#75715e",
-- 		}
--
-- 		local my_lualine_theme = {
-- 			normal = {
-- 				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			insert = {
-- 				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			visual = {
-- 				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			command = {
-- 				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			replace = {
-- 				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
-- 				b = { bg = colors.bg, fg = colors.fg },
-- 				c = { bg = colors.bg, fg = colors.fg },
-- 			},
-- 			inactive = {
-- 				a = { bg = colors.inactive_bg, fg = colors.gray, gui = "bold" },
-- 				b = { bg = colors.inactive_bg, fg = colors.gray },
-- 				c = { bg = colors.inactive_bg, fg = colors.gray },
-- 			},
-- 		}
--
-- 		-- configure lualine with the monokai machine theme
-- 		lualine.setup({
-- 			options = {
-- 				theme = my_lualine_theme,
-- 			},
-- 			sections = {
-- 				lualine_x = {
-- 					{
-- 						lazy_status.updates,
-- 						cond = lazy_status.has_updates,
-- 						color = { fg = "#ffb86c" }, -- this color could be adjusted as needed
-- 					},
-- 					{ "encoding" },
-- 					{ "fileformat" },
-- 					{ "filetype" },
-- 				},
-- 			},
-- 		})
-- 	end,
-- }

--------------------------------------

-- catppuccin_lualine.lua
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- catppuccin mocha colors
		local colors = {
			rosewater = "#f5e0dc",
			flamingo = "#f2cdcd",
			mauve = "#ddb6f2",
			pink = "#f5c2e7",
			red = "#f28fad",
			maroon = "#e8a2af",
			peach = "#f8bd96",
			yellow = "#fae3b0",
			green = "#abe9b3",
			teal = "#b5e8e0",
			sky = "#89dceb",
			sapphire = "#74c7ec",
			blue = "#96cdfb",
			lavender = "#b4befe",
			text = "#cdd6f4",
			subtext1 = "#bac2de",
			subtext0 = "#a6adc8",
			overlay2 = "#9399b2",
			overlay1 = "#7f849c",
			overlay0 = "#6c7086",
			surface2 = "#585b70",
			surface1 = "#45475a",
			surface0 = "#313244",
			base = "#1e1e2e",
			mantle = "#181825",
			crust = "#11111b",
		}

		-- define custom catppuccin mocha theme for lualine
		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.crust, gui = "bold" },
				b = { bg = colors.surface0, fg = colors.text },
				c = { bg = colors.mantle, fg = colors.text },
			},
			insert = {
				a = { bg = colors.green, fg = colors.crust, gui = "bold" },
				b = { bg = colors.surface0, fg = colors.text },
				c = { bg = colors.mantle, fg = colors.text },
			},
			visual = {
				a = { bg = colors.mauve, fg = colors.crust, gui = "bold" },
				b = { bg = colors.surface0, fg = colors.text },
				c = { bg = colors.mantle, fg = colors.text },
			},
			replace = {
				a = { bg = colors.red, fg = colors.crust, gui = "bold" },
				b = { bg = colors.surface0, fg = colors.text },
				c = { bg = colors.mantle, fg = colors.text },
			},
			command = {
				a = { bg = colors.peach, fg = colors.crust, gui = "bold" },
				b = { bg = colors.surface0, fg = colors.text },
				c = { bg = colors.mantle, fg = colors.text },
			},
			inactive = {
				a = { bg = colors.surface1, fg = colors.overlay1, gui = "bold" },
				b = { bg = colors.surface1, fg = colors.overlay1 },
				c = { bg = colors.surface1, fg = colors.overlay1 },
			},
		}

		-- setup lualine with the catppuccin mocha theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_b = {
					{ "branch" },
					{ "diff" },
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = colors.peach }, -- color for pending updates
					},
				},
				lualine_x = {
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#cba6f7" },
					},
				},
			},
		})
	end,
}
