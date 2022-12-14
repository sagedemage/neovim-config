-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- COC
Plug('neoclide/coc.nvim', { branch = 'release'})

-- Auto Pairs
Plug 'jiangmiao/auto-pairs'

-- Vim Instant Markdown Preview
Plug('instant-markdown/vim-instant-markdown', {['for'] = 'markdown', ['do'] = 'yarn install'})

-- Vim JS
Plug 'yuezk/vim-js'

-- Vim JSX Pretty
Plug 'maxmellon/vim-jsx-pretty'

-- Vim Signify
if vim.fn.has('nvim') or vim.fn.has('patch-8.0.902')
	then
  	Plug 'mhinz/vim-signify'
else
	Plug('mhinz/vim-signify', { branch = 'legacy' })
end

-- Vim Astro
Plug 'wuelnerdotexe/vim-astro'

-- Initialize plugin system
vim.call('plug#end')


-- Set map leader to space
vim.g.mapleader=vim.api.nvim_replace_termcodes('<space>', true, true, true)

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

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime=300

-- COC bindings
-- Use <c-space> to trigger completion.
if vim.fn.has('nvim')
	then
	vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })
else
	vim.api.nvim_set_keymap('i', '<c-@>', 'coc#refresh()', { silent = true, expr = true })
end

-- Instant Markdown Preview
vim.g['instant_markdown_autostart'] = 0

-- Instant Markdown Keybinding
vim.api.nvim_set_keymap('n', '<leader>p', ':InstantMarkdownPreview<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':InstantMarkdownStop<CR>', { silent = true })

-- File Explorer bindings
-- Open File Explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':Ex<CR>', { noremap = true })

-- Close Buffer
vim.api.nvim_set_keymap('n', '<leader>c', ':bd<CR>', { noremap = true })

-- Vim Script Commands

-- Configures the python dependency discovery when checking performing syntax checking with python source code

vim.cmd([[
	autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
]])

-- Make COC accept auto complete when pressing enter key

vim.cmd([[
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
		\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

-- Disable mouse
vim.cmd([[
	set mouse=
]])


