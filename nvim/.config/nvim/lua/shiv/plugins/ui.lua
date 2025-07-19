return {
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			-- ensure opts.routes is initialized as a table
			opts.routes = opts.routes or {}

			-- now safely insert routes
			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "no information available",
				},
				opts = { skip = true },
				routes = {
					{
						view = "notify",
						filter = { event = "msg_showmode" },
					},
				},
			})

			-- focus handling logic
			local focused = true
			vim.api.nvim_create_autocmd("focusgained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("focuslost", {
				callback = function()
					focused = false
				end,
			})

			-- ensure opts.routes is still a table and insert a new route
			table.insert(opts.routes, 1, {
				filter = {
					cond = function()
						return not focused
					end,
				},
				view = "notify_send",
				opts = { stop = false },
			})

			-- ensure opts.commands is initialized
			opts.commands = opts.commands or {}
			opts.commands.all = {
				-- options for the message history
				view = "split",
				filter = {},
				opts = { enter = true, format = "details" },
			}

			-- handle markdown filetype
			vim.api.nvim_create_autocmd("filetype", {
				pattern = "markdown",
				callback = function(event)
					vim.schedule(function()
						require("noice.text.markdown").keys(event.buf)
					end)
				end,
			})

			-- enable lsp doc border preset
			opts.presets = opts.presets or {}
			opts.presets.lsp_doc_border = true
		end,
	},

	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	opts = {
	-- 		timeout = 3000,
	-- 	},
	-- },

	--animations
	{
		"echasnovski/mini.animate",
		-- event = "verylazy",
		opts = function(_, opts)
			opts.scroll = {
				enable = false,
			}
		end,
	},

	-- buffer line
	-- {
	-- 	"akinsho/bufferline.nvim",
	-- 	event = "verylazy",
	-- 	keys = {
	-- 		{ "<tab>", "<cmd>bufferlinecyclenext<cr>", desc = "next tab" },
	-- 		{ "<s-tab>", "<cmd>bufferlinecycleprev<cr>", desc = "prev tab" },
	-- 	},
	-- 	opts = {
	-- 		options = {
	-- 			mode = "tabs",
	-- 			separator_style = "slant",
	-- 			show_buffer_close_icons = false,
	-- 			show_close_icon = false,
	-- 		},
	-- 	},
	-- },

	-- filename
	{
		"b0o/incline.nvim",
		dependencies = { "craftzdog/solarized-osaka.nvim" },
		event = "bufreadpre",
		priority = 1200,
		config = function()
			local colors = require("solarized-osaka.colors").setup()
			require("incline").setup({
				highlight = {
					groups = {
						inclinenormal = { guibg = colors.orange100, guifg = colors.base04 },
						inclinenormalnc = { guifg = colors.violet700, guibg = colors.base03 },
					},
				},
				window = { margin = { vertical = 0, horizontal = 1 } },
				hide = {
					cursorline = true,
				},
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					if vim.bo[props.buf].modified then
						filename = "[+] " .. filename
					end

					local icon, color = require("nvim-web-devicons").get_icon_color(filename)
					return { { icon, guifg = color }, { " " }, { filename } }
				end,
			})
		end,
	},
}
