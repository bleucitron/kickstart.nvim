return {
	'ThePrimeagen/vim-be-good',
	{
		"ThePrimeagen/harpoon",
		opts = function()
			local harpoon = require('harpoon')

			vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
			vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<C-S-N>", function() harpoon:list():prev() end)
			vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
		end,
		branch = "harpoon2",
		dependencies = {
			"nvim-lua/plenary.nvim",
		}
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					svelte = { "prettierd" },
					css = { "prettierd" },
					html = { "prettierd" },
					json = { "prettierd" },
					yaml = { "prettierd" },
					markdown = { "prettierd" },
					graphql = { "prettierd" },
					lua = { "stylua" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500
				}
			})

			vim.keymap.set({ "n", "v" }, "<leader>f", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500
				})
			end, { desc = "Format file or range (in visual mode)" })
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			--"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},

	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPre", "BufNewFile"
		},
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				svelte = { "eslint_d" },
			}

			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end
			})

			vim.keymap.set("n", "<leader>l", function()
				lint.try_lint()
			end, { desc = "Trigger linting for current file" })
		end
	}


	-- {
	-- 	"nvim-neotest/neotest",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"antoinemadec/FixCursorHold.nvim",
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"marilari88/neotest-vitest"
	-- 	},
	-- 	config = function()
	-- 		require('neotest').setup({
	-- 			adapters = {
	-- 				require('neotest-vitest')
	-- 			}
	-- 		})
	-- 	end
	-- }

}
