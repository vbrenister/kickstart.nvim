return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.jump').setup()
    require('mini.pairs').setup()
    require('mini.sessions').setup()
    require('mini.tabline').setup()
    require('mini.icons').setup()
    require('mini.bracketed').setup()
    require('mini.cursorword').setup()

    local bufremove = require 'mini.bufremove'
    bufremove.setup()

    vim.keymap.set('n', '<leader>bd', function()
      bufremove.delete()
    end, { noremap = true, desc = '[D]elete [B]uffer' })

    vim.keymap.set('n', '<leader>bD', function()
      for _, id in ipairs(vim.api.nvim_list_bufs()) do
        bufremove.delete(id)
      end
    end, { noremap = true, desc = '[D]elete All [B]uffers' })

    vim.keymap.set('n', '<leader>bc', function()
      for _, id in ipairs(vim.api.nvim_list_bufs()) do
        if id ~= vim.api.nvim_get_current_buf() then
          bufremove.delete(id)
        end
      end
    end, { noremap = true, desc = '[D]elete All Buffers except [C]urrent' })

    local files = require 'mini.files'
    files.setup()

    vim.keymap.set('n', '\\', function()
      files.open()
    end, { noremap = true })

    require('mini.starter').setup {
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
