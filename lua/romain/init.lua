-- Options
vim.wo.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

-- to avoid breaking long lines of text
vim.o.wrap = true
vim.o.linebreak = true
vim.bo.textwidth = 0

vim.bo.smartindent = true

vim.opt.path:append '**'
vim.opt.suffixesadd = '.js,.ts'
vim.o.ic = false

vim.opt.hlsearch = true
vim.o.incsearch = true
vim.o.inccommand = 'split'

vim.o.termguicolors = true
vim.o.scrolloff = 8

vim.wo.cursorline = true
vim.o.colorcolumn = '80'

-- Remaps
local set = vim.keymap.set

set('n', '<Esc>', '<cmd>nohlsearch<CR>')

set('n', '<leader>pv', vim.cmd.Ex)
set('n', '<leader>x', '<cmd>.lua<CR>', { desc = 'Execute the current line' })
set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute the current file' })

-- remap Previous/Next location
set('n', '<C-I>', '<C-O>')
set('n', '<C-O>', '<C-I>')

-- add new lines without going into Insert mode
set('n', '<leader>o', 'o<Esc>')
set('n', '<leader>O', 'O<Esc>')

-- moving selected lines up and down
set('v', 'J', ":m '>+1<CR>gv=gv")
set('v', 'K', ":m '<-2<CR>gv=gv")

-- edit every occurence of the word you at
set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')

-- copy into system's clipboard register
set('n', '<leader>y', '"+y')
set('v', '<leader>y', '"+y')
set('n', '<leader>Y', '"+y')

-- insert brackets
set('n', '<leader>{', 'a{<CR>}<Esc><S-o>')
set('n', '<leader>}', 'a{}<Esc>i')
set('n', '<leader>(', 'a(<CR>)<Esc><S-o>')
set('n', '<leader>)', 'a()<Esc>i')
set('n', '<leader>[', 'a[<CR>]<Esc><S-o>')
set('n', '<leader>]', 'a[]<Esc>i')

-- duplicate line
set('n', '<leader>dl', 'yyp')

-- center screen on page moves
set('n', '<C-d>', '25<C-d>zz')
set('n', '<C-u>', '25<C-u>zz')

-- center search term
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

-- do not lose previously yanked content
set('x', '<leader>p', '"_dP')
set('n', '<leader>d', '"_d')
set('v', '<leader>d', '"_d')
