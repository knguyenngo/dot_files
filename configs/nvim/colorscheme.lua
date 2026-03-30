return {
  "sainnhe/everforest",
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.g.everforest_background = "medium"
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_better_performance = 1
    vim.cmd("colorscheme everforest")
  end,
}
