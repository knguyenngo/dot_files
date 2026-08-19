-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory', 'DiffviewClose' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iff view (working tree)' },
      { '<leader>gh', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it file [H]istory' },
      { '<leader>gc', '<cmd>DiffviewClose<CR>', desc = '[G]it diff [C]lose' },
    },
  },
}
