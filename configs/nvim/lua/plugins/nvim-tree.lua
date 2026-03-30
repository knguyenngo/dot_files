return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = true,
				ignore = false, -- show files in .gitignore
			},
			filters = {
				dotfiles = false, -- also show dotfiles
			},
		})

		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
	end,
}
