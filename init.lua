-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Programming Language Support
-- - Zig Tooling Support
Plug 'ziglang/zig.vim'

-- nvim-cmp (Code Completion)
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

-- For vsnip users
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- Vim Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

-- vim-signify (git VCS)
if vim.fn.has('nvim') or vim.fn.has('patch-8.0.902') then
	Plug 'mhinz/vim-signify'
else
	Plug('mhinz/vim-signify', { branch = 'legacy' })
end

-- Neovim lspconfig
Plug "neovim/nvim-lspconfig"

-- Vim JS
Plug 'yuezk/vim-js'

-- Vim JSX Pretty
Plug 'maxmellon/vim-jsx-pretty'

-- Initialize plugin system
vim.call('plug#end')

-- Set leader key to space
vim.g.mapleader = ' '

-- 4 spaces for tab
vim.opt.tabstop = 4

-- Set tab insert space
vim.opt.shiftwidth = 4

-- Enable line numbers
vim.wo.number = true

-- Enable automatic running of :RustFmt when you save a buffer
vim.g["rustfmt_autosave"] = 1

-- Open file explorer
vim.keymap.set('n', '<leader>e', ':Explore<CR>', { noremap = true })

-- Vim Markdown
-- - Disable folding
vim.g["vim_markdown_folding_disabled"] = 1

-- - Enable conceal
local set = vim.opt
set.conceallevel = 2

-- - ge command to follow named anchors in
-- - links of the form file#anchor or just #anchor
vim.g["vim_markdown_follow_anchor"] = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300

-- LSP Support
-- - Go
require 'lspconfig'.gopls.setup {}
-- - Rust
require 'lspconfig'.rust_analyzer.setup {}
-- - JavaScript/TypeScript
require 'lspconfig'.tsserver.setup {}
-- - Python
require 'lspconfig'.pyright.setup {}
-- - C/C++
require('lspconfig').clangd.setup {
	cmd = {"clangd", "-header-insertion=never"}
}

-- Set up nvim-cmp.
local cmp = require 'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
	}, {
		{ name = 'buffer' },
	})
})

-- Use HJKL in Insert move
-- vim.keymap.set()
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true })
vim.keymap.set('i', '<C-h>', '<Left>', { noremap = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true })

-- Clipboard register switcher
-- - Switch to clipboard register
vim.keymap.set('n', '<leader>c', ':set clipboard=unnamedplus<CR>', { noremap = true })

-- - Switch to unamed register
vim.keymap.set('n', '<leader>u', ':set clipboard=\"\"<CR>', { noremap = true })

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

