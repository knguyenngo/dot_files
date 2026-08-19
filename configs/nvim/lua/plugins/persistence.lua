-- Session restore: <leader>qs restores the session for the cwd
return {
	"folke/persistence.nvim",
	event = "BufReadPre",
	opts = {},
	keys = {
		{ "<leader>qs", function() require("persistence").load() end, desc = "[Q]uit: restore [S]ession" },
		{ "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "[Q]uit: restore [L]ast session" },
	},
}
