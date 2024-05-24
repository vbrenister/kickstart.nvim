return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.jump').setup()
    require('mini.pairs').setup()

    local starter = require 'mini.starter'
    starter.setup {
      header = 'Welcome to NeoVIM',
    }

    local files = require 'mini.files'
    files.setup()

    vim.keymap.set('n', '\\', function()
      files.open()
    end, { noremap = true })

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
