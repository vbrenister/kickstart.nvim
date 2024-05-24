return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
  },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    local map = vim.keymap.set
    map('n', '<leader>ho', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [O]pen' })

    map('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [A]dd' })

    map('n', '<leader>hc', function()
      harpoon:list():clear()
    end, { desc = '[H]arpoon [C]lear' })

    map('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = '[H]arpoon [N]ext' })

    map('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = '[H]arpoon [P]revious' })
  end,
}
