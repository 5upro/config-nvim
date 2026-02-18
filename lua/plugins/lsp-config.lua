return{
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pylsp",
					"html",
					"cssls",
					"eslint",
					"ts_ls",
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			-- local lspconfig = require("lspconfig")
			vim.lsp.config("lua_ls", {
				capabilities = capabilities
			})
			vim.lsp.config("clangd", {
				capabilities = capabilities,
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--completion-style=detailed",
					"--query-driver=C:/msys64/mingw64/bin/*",
				}

			})
			vim.lsp.config("pylsp", {
				capabilities = capabilities
			})
			vim.lsp.config("html", {
				capabilities = capabilities
			})
			vim.lsp.config("cssls", {
				capabilities = capabilities
			})
			vim.lsp.config("eslint", {
				capabilities = capabilities
			})
			vim.lsp.config("ts_ls", {
				capabilities = capabilities
			})
			vim.lsp.config("ast_grep", {
				capabilities = capabilities
			})

			--Key Mappings 
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) --shift+k to show docm of the keyword under which is under the cursor 
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) --gd to show doc of the keyword under which is under the cursor 
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) --space+ca to show doc of the keyword under which is under the cursor 
		end
	},
}
