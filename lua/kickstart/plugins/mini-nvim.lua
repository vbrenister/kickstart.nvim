return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.jump').setup()
    require('mini.pairs').setup()
    require('mini.notify').setup()
    require('mini.sessions').setup()
    require('mini.tabline').setup()

    local files = require 'mini.files'
    files.setup()

    vim.keymap.set('n', '\\', function()
      files.open()
    end, { noremap = true })

    local starter = require 'mini.starter'
    starter.setup {
      header = 'Welcome to NeoVIM',
      footer = [[
Type query to filter items
<BS> deletes latest character from query
<Esc> resets current query
<Down/Up>, <C-n/p>, <M-j/k> move current item
<CR> executes action of current item
<\> open file explorer
<C-c> closes this buffer]],
    }

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
