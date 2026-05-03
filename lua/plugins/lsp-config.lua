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
					"jdtls",
					"kotlin_language_server",
					"sqls",
					"tsgo"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
			vim.lsp.config("tsgo", {
				capabilities = capabilities
			})
			vim.lsp.config("jdtls", {
				capabilities = capabilities
			})
			vim.lsp.config("kotlin_language_server", {
				capabilities = capabilities,
				root_dir = require('lspconfig.util').root_pattern(
					"build.gradle", "settings.gradle", "pom.xml", ".git"
				)
			})
			vim.lsp.config("sqls", {
				capabilities = capabilities
			})

			--Key Mappings 
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) --shift+k to show docm of the keyword under which is under the cursor 
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) --gd to show doc of the keyword under which is under the cursor 
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) --space+ca to show doc of the keyword under which is under the cursor 
		end
	},
}
