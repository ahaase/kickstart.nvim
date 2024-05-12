-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tpope/vim-fugitive',
    keys = {
      {
        '<leader>gs',
        vim.cmd.Git,
        mode = 'n',
        desc = '[G]it [S]tatus',
      },
    },
  },
  {
    'mbbill/undotree',
    keys = {
      {
        '<leader>u',
        vim.cmd.UndotreeToggle,
        mode = 'n',
        desc = '[U]ndo tree'
      },
    },
  },
  {
    'theprimeagen/harpoon',
    config = function ()
      local mark = require('harpoon.mark')
      local ui = require('harpoon.ui')

      vim.keymap.set('n', '<leader>a', mark.add_file)
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

      vim.keymap.set('n', '<C-1>', function () ui.nav_file(1) end)
      vim.keymap.set('n', '<C-2>', function () ui.nav_file(2) end)
      vim.keymap.set('n', '<C-3>', function () ui.nav_file(3) end)
      vim.keymap.set('n', '<C-4>', function () ui.nav_file(4) end)
    end,
  },
  {
    'APZelos/blamer.nvim',
    keys = {
      {
        '<leader>gb',
        function ()
          vim.cmd('BlamerToggle')
        end,
        mode = 'n',
        desc = 'Toggle [G]it [B]lame',
      },
    },
  },
}
