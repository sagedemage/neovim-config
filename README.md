# neovim-config
My configuration of Neovim using extensions.

## Build Neovim on Linux (Optional)
[build_neovim_on_linux](./build_neovim_on_linux.md)

## Setup Instructions for Linux
[setup_intructions_for_linux](./setup_intructions_for_linux.md)

## Setup Instructions for Windows
[setup_intructions_for_windows](./setup_intructions_for_windows.md)

## External dependencies
```
sudo npm i -g typescript-language-server
sudo npm -g install instant-markdown-d
rustup component add rust-analyzer
```

## Install vim extensions

Install all the vim plug extensions
```
:PlugInstall
```

## Plugin Manager
1. [vim-plug](https://github.com/junegunn/vim-plug)

## vim plug plugins
1. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
2. [ziglang/zig.vim](https://github.com/ziglang/zig.vim)
3. [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim) 
4. [vim-signify](https://github.com/mhinz/vim-signify)
5. [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
6. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
7. [yuezk/vim-js](https://github.com/yuezk/vim-js)
8. [maxmellon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)
9. [vim-markdown](https://github.com/preservim/vim-markdown)

## Keybindings
- To move up in the code completion menu use: `Ctrl-p`
- To move down in the code completion menu use: `Ctrl-n`

## Resources
* [Lua-guide by Neovim](https://neovim.io/doc/user/lua-guide.html)
* [Everything you need to know to configure neovim using lua by Heiker Curiel](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)

