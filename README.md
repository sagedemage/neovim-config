# neovim-config
My configuration of Neovim using extensions.

## Build Neovim on Linux (Optional)
[build_neovim_on_linux](./docs/build_neovim_on_linux.md)

## Setup Instructions for Linux
[setup_instructions_for_linux](./docs/setup_instructions_for_linux.md)

## Setup Instructions for Windows
[setup_instructions_for_windows](./docs/setup_instructions_for_windows.md)

## External dependencies
```
sudo npm i -g typescript typescript-language-server instant-markdown-d pyright
rustup component add rust-analyzer
```
On Ubuntu:
```
sudo apt install clangd
```

## Install vim extensions

Install all the vim plug extensions
```
:PlugInstall
```

## CMake Project with Clang
Create a build directory with this command to generate a compile_commands.json.
```
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -B build
```

## Plugin Manager
1. [vim-plug](https://github.com/junegunn/vim-plug)

## vim plug plugins
1. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
2. [ziglang/zig.vim](https://github.com/ziglang/zig.vim)
3. [vim-signify](https://github.com/mhinz/vim-signify)
4. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
5. [yuezk/vim-js](https://github.com/yuezk/vim-js)
6. [maxmellon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)
7. [vim-markdown](https://github.com/preservim/vim-markdown)

## Keybindings
- To move up in the code completion menu use: `Ctrl-p`
- To move down in the code completion menu use: `Ctrl-n`

## Resources
* [Lua-guide by Neovim](https://neovim.io/doc/user/lua-guide.html)
* [Everything you need to know to configure neovim using lua by Heiker Curiel](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
* [Neovim lsp server configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

