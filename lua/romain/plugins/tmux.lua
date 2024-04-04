return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<c-h>', ':TmuxNavigateLeft<cr>'),
  vim.keymap.set('n', '<c-j>', ':TmuxNavigateDown<cr>'),
  vim.keymap.set('n', '<c-k>', ':TmuxNavigateUp<cr>'),
  vim.keymap.set('n', '<c-l>', ':TmuxNavigateRight<cr>'),
  -- cmd = {
  --   'TmuxNavigateLeft',
  --   'TmuxNavigateDown',
  --   'TmuxNavigateUp',
  --   'TmuxNavigateRight',
  --   'TmuxNavigatePrevious',
  -- },
  -- keys = {
  --   { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
  --   { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
  --   { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
  --   { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
  --   { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  -- },
}
