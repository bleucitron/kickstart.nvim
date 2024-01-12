-- Options
vim.wo.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

vim.bo.smartindent = true

vim.opt.path:append '**'
vim.opt.suffixesadd = '.js,.ts'
vim.o.ic = false

vim.o.incsearch = true

vim.o.termguicolors = true
vim.o.scrolloff = 8

vim.o.colorcolumn = "80"

-- Remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moving selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- edit every occurence of the word you at
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- in any visual mode, keep the copy registry consistent
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy into system's clipboard register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

-- duplicate line
vim.keymap.set("n", "<leader>dl", "yyp")

-- center screen on page moves
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
