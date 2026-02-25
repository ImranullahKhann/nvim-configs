-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Go to normal mode on ESC in terminal
vim.keymap.set('t', '<Esc>', [[<C-\/><C-n>]], {silent = true, noremap = true})

-- Remap common <C-w> commands to <leader>w
vim.keymap.set('n', '<leader>ws', '<C-w>s', { noremap = true, silent = true }) -- Split horizontally
vim.keymap.set('n', '<leader>wv', '<C-w>v', { noremap = true, silent = true }) -- Split vertically
vim.keymap.set('n', '<leader>ww', '<C-w>w', { noremap = true, silent = true }) -- Switch to next window
vim.keymap.set('n', '<leader>wq', '<C-w>q', { noremap = true, silent = true }) -- Close current window
vim.keymap.set('n', '<leader>wh', '<C-w>h', { noremap = true, silent = true }) -- Move to left window
vim.keymap.set('n', '<leader>wj', '<C-w>j', { noremap = true, silent = true }) -- Move to window below
vim.keymap.set('n', '<leader>wk', '<C-w>k', { noremap = true, silent = true }) -- Move to window above
vim.keymap.set('n', '<leader>wl', '<C-w>l', { noremap = true, silent = true }) -- Move to right window

-- Increase/Decrease window height by 2
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true })

-- Increase/Decrease window width by 2
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
