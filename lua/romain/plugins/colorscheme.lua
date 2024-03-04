return {
  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  --   'folke/tokyonight.nvim',
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- Load the colorscheme here
  --     vim.cmd.colorscheme 'tokyonight-night'
  --
  --     -- You can configure highlights by doing something like
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  {
    'navarasu/onedark.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'cool',
        toggle_style_key = '<leader>ts',
      }

      vim.cmd.colorscheme 'onedark'
    end,
  },
}
