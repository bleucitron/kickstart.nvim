return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    --"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
        },
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = 'disabled',
      },
      close_if_last_window = true,
      event_handlers = {
        {
          event = 'neo_tree_buffer_enter',
          handler = function()
            vim.cmd [[
          setlocal relativenumber
          ]]
          end,
        },
      },
    }

    vim.keymap.set('n', '<C-t>', function()
      vim.cmd 'Neotree toggle reveal'
    end)
  end,
}
