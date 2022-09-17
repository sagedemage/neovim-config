-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Nerdtree
Plug 'preservim/nerdtree'

-- COC
Plug('neoclide/coc.nvim', { branch = 'release'})

-- Auto Pairs
Plug 'jiangmiao/auto-pairs'

-- Vim Instant Markdown Preview
Plug('instant-markdown/vim-instant-markdown', {['for'] = 'markdown', ['do'] = 'yarn install'})

-- Vim Signify
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
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.

vim.cmd([[
	inoremap <silent><expr> <TAB>
    	\ coc#pum#visible() ? coc#pum#next(1) :
    	\ CheckBackspace() ? "\<Tab>" :
    	\ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
]])

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice.

vim.cmd([[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

-- Instant Markdown Preview
vim.g['instant_markdown_autostart'] = 0

-- Instant Markdown Keybinding
vim.api.nvim_set_keymap('n', '<leader>p', ':InstantMarkdownPreview<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':InstantMarkdownStop<CR>', { silent = true })

-- nerdtree bindings
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true })

