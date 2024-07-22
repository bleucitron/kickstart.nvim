return {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = false,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = false,
        ['<C-h>'] = false,
        ['<C-t>'] = false,
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = 'actions.close',
        ['<C-l>'] = false,
        ['-'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = { 'actions.cd', opts = { scope = 'tab' } },
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
        ['g\\'] = 'actions.toggle_trash',
      }, -- use_default_keymaps = false,
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name)
          return name == '.' or name == '..'
        end,
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
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
  },
}
