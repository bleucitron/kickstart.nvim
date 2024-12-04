return {
  {
    'navarasu/onedark.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'cool',
      }

      vim.cmd.colorscheme 'onedark'
    end,
  },
}
