-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Nerdtree
Plug 'preservim/nerdtree'

-- COC
Plug('neoclide/coc.nvim', { branch = 'release'})

-- vim-go
Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries'})

-- Initialize plugin system
vim.call('plug#end')

-- 4 spaces for tab
vim.opt.tabstop=4

-- Set tab inset space
vim.opt.shiftwidth=4

-- Copy to clipboard
vim.opt.clipboard='unnamedplus'

-- Line numbering
vim.opt.number=true

-- hidden
vim.opt.hidden=true

-- COC bindings
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })


-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime=300

-- nerdtree bindings
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true })

