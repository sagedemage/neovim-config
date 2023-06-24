-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'rust-lang/rust.vim'

if vim.fn.has('nvim') or vim.fn.has('patch-8.0.902')
	then
  	Plug 'mhinz/vim-signify'
else
  	Plug('mhinz/vim-signify', { branch = 'legacy' })
end

-- Initialize plugin system
vim.call('plug#end')

-- Set map leader to space
vim.g.mapleader=vim.api.nvim_replace_termcodes('<space>', true, true, true)

-- 4 spaces for tab
vim.opt.tabstop=4

-- Set tab insert space
vim.opt.shiftwidth=4

-- Enable automatic running of :RustFmt when you save a buffer
vim.g["rustfmt_autosave"] = 1

-- Open file explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true })

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime=300
