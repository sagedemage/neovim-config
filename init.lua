-- Specify a directory for plugins
-- - For Neovim: stdpath('data') . '/plugged'
-- - Avoid using standard Vim directory names like 'plugin'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Programming Language Support
-- - Rust Tooling Support
Plug 'rust-lang/rust.vim'
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

-- Vim Instant Markdown
Plug('instant-markdown/vim-instant-markdown', {['for'] = 'markdown', ['do'] = 'yarn install'})

-- vim-signify (git VCS)
if vim.fn.has('nvim') or vim.fn.has('patch-8.0.902') then 
	Plug 'mhinz/vim-signify'
else 
	Plug('mhinz/vim-signify', { branch = 'legacy' })
end

-- Neovim lspconfig
Plug "neovim/nvim-lspconfig"

-- Rust tools to extend rust analyzer
Plug 'simrat39/rust-tools.nvim'

-- Vim JS
Plug 'yuezk/vim-js'

-- Vim JSX Pretty
Plug 'maxmellon/vim-jsx-pretty'

-- Initialize plugin system
vim.call('plug#end')

-- Set map leader to space
vim.g.mapleader = vim.api.nvim_replace_termcodes('<space>', true, true, true)

-- 4 spaces for tab
vim.opt.tabstop = 4

-- Set tab insert space
vim.opt.shiftwidth = 4

-- Enable line numbers
vim.wo.number = true

-- Enable automatic running of :RustFmt when you save a buffer
vim.g["rustfmt_autosave"] = 1

-- Open file explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true })

-- Disable Instant Markdown Preview Autostart
vim.g['instant_markdown_autostart'] = 0

-- Instant Markdown Keybinding
vim.api.nvim_set_keymap('n', '<leader>p', ':InstantMarkdownPreview<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':InstantMarkdownStop<CR>', { silent = true })

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300

-- Rust tools configuration
local opts = {
	tools = { -- rust-tools options
		-- how to execute terminal commands
		-- options right now: termopen / quickfix
		executor = require("rust-tools.executors").termopen,

		-- callback to execute once rust-analyzer is done initializing the workspace
		-- The callback receives one parameter indicating the `health` of the server: "ok" | "warning" | "error"
		on_initialized = nil,

		-- automatically call RustReloadWorkspace when writing to a Cargo.toml file.
		reload_workspace_from_cargo_toml = true,
	}, -- end tools

	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
	-- rust-analyzer options
	server = {
		-- standalone file support
		-- setting it to false may improve startup time
		standalone = true,
	},

	-- debugging stuff
	dap = {
		adapter = {
			type = "executable",
			command = "lldb-vscode",
			name = "rt_lldb",
		},
	},
} -- end opts

require('rust-tools').setup(opts)

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
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {noremap = true})

-- Clipboard register switcher
-- - Switch to clipboard register 
vim.api.nvim_set_keymap('n', '<leader>c', ':set clipboard=unnamedplus<CR>', {noremap = true})

-- - Switch to unamed register
vim.api.nvim_set_keymap('n', '<leader>u', ':set clipboard=\"\"<CR>', {noremap = true})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
