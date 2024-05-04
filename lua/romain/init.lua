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

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.o.incsearch = true

vim.o.termguicolors = true
vim.o.scrolloff = 8

vim.wo.cursorline = true
vim.o.colorcolumn = '80'
-- Remaps

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- remap Previous/Next location
vim.keymap.set('n', '<C-I>', '<C-O>')
vim.keymap.set('n', '<C-O>', '<C-I>')

-- add new lines without going into Insert mode
vim.keymap.set('n', '<leader>o', 'o<Esc>')
vim.keymap.set('n', '<leader>O', 'O<Esc>')

-- moving selected lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- edit every occurence of the word you at
vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')

-- in any visual mode, keep the copy registry consistent
vim.keymap.set('x', '<leader>p', '"_dP')

-- copy into system's clipboard register
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+y')

-- insert brackets
vim.keymap.set('n', '<leader>{', 'a{<CR>}<Esc><S-o>')
vim.keymap.set('n', '<leader>}', 'a{}<Esc>i')
vim.keymap.set('n', '<leader>(', 'a(<CR>)<Esc><S-o>')
vim.keymap.set('n', '<leader>)', 'a()<Esc>i')
vim.keymap.set('n', '<leader>[', 'a[<CR>]<Esc><S-o>')
vim.keymap.set('n', '<leader>]', 'a[]<Esc>i')

-- duplicate line
vim.keymap.set('n', '<leader>dl', 'yyp')

-- center screen on page moves
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- center search term
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- do not lose previously yanked content
vim.keymap.set('x', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')
