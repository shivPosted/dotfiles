return {
	"L3MON4D3/LuaSnip",
	config = function()
		local luasnip = require("luasnip")

		-- Helper function to get filename without extension for `TM_FILENAME_BASE`
		local function filename_base()
			return vim.fn.expand("%:t:r")
		end

		-- Define snippets
		luasnip.add_snippets("javascript", {
			-- "Print to console" snippet (prefix: "cl")
			luasnip.snippet("cl", {
				luasnip.text_node("console.log("),
				luasnip.insert_node(1),
				luasnip.text_node(")"),
			}),

			-- "React component using regular function declaration" snippet (prefix: "rfc")
			luasnip.snippet("rfc", {
				luasnip.text_node("function "),
				luasnip.insert_node(1, filename_base()),
				luasnip.text_node("() {"),
				luasnip.text_node({ "", "\treturn (" }),
				luasnip.text_node({ "", "\t\t<div>" }),
				luasnip.insert_node(0),
				luasnip.text_node({ "", "\t\t</div>" }),
				luasnip.text_node({ "", "\t)" }),
				luasnip.text_node({ "", "}" }),
				luasnip.text_node({ "", "" }),
				luasnip.text_node("export default "),
				luasnip.insert_node(1, filename_base()),
			}),

			-- "React styled component" snippet (prefix: "rsc")
			luasnip.snippet("rsc", {
				luasnip.text_node("import styled from 'styled-components'"),
				luasnip.text_node({ "", "" }),
				luasnip.text_node("const Styled"),
				luasnip.function_node(filename_base, {}),
				luasnip.text_node(" = styled."),
				luasnip.insert_node(1),
				luasnip.text_node("``"),
				luasnip.text_node({ "", "" }),
				luasnip.text_node("function "),
				luasnip.function_node(filename_base, {}),
				luasnip.text_node("() {"),
				luasnip.text_node({ "", "\treturn (" }),
				luasnip.text_node({ "", "\t\t<Styled" }),
				luasnip.function_node(filename_base, {}),
				luasnip.text_node(">"),
				luasnip.text_node({ "", "\t\t\t" }),
				luasnip.function_node(filename_base, {}),
				luasnip.text_node({ "", "\t\t</Styled" }),
				luasnip.function_node(filename_base, {}),
				luasnip.text_node(">"),
				luasnip.text_node({ "", "\t)" }),
				luasnip.text_node({ "", "}" }),
				luasnip.text_node({ "", "" }),
				luasnip.text_node("export default "),
				luasnip.function_node(filename_base, {}),
			}),
		})

		-- Extend snippets for React (JS and JSX)
		luasnip.filetype_extend("javascriptreact", { "javascript" })
	end,
}
