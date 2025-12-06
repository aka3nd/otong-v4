return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
				},
			})

			-- Keymap modern <leader>f untuk format
			vim.keymap.set("n", "<leader>ff", function()
			vim.lsp.buf.format()
			end, { noremap = true, silent = true })
		end,
	},
}
