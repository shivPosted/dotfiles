return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Harpoon depends on plenary
	},
	config = function()
		local harpoon = require("harpoon")
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		harpoon.setup({
			global_settings = {
				save_on_toggle = false, -- Automatically save the file when toggling the UI
				save_on_change = true, -- Automatically save the file when changes are made
				enter_on_sendcmd = true, -- Automatically enter the terminal after sending a command
				tmux_autoclose_windows = false, -- Automatically close tmux windows when toggling
				excluded_filetypes = { "harpoon" }, -- Exclude specific filetypes
				mark_branch = false, -- Do not track marks per branch
			},
		})

		-- Keybindings for Harpoon
		vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon Add File" })
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon Toggle Quick Menu" })
		vim.keymap.set("n", "<C-1>", function()
			ui.nav_file(1)
		end, { desc = "Harpoon Navigate to File 1" })
		vim.keymap.set("n", "<C-2>", function()
			ui.nav_file(2)
		end, { desc = "Harpoon Navigate to File 2" })
		vim.keymap.set("n", "<C-3>", function()
			ui.nav_file(3)
		end, { desc = "Harpoon Navigate to File 3" })
		vim.keymap.set("n", "<C-4>", function()
			ui.nav_file(4)
		end, { desc = "Harpoon Navigate to File 4" })
	end,
}
