# neovim-config
My configuration of neovim using the vim plugin manager.

## Setup instructions

Go to the neovim-config folder
```
cd neovim-config
```

Copy this config to the vim configuration file
```
cp init.lua ~/.config/nvim/init.lua
```

Install vim plug plugin manager
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Install all the vim plug extensions
```
:PlugInstall
```

## Install language extensions
Install rust analyzer plugin for Rust
```
:CocInstall coc-rust-analyzer
```

Install pyright extentsion for Python
```
:CocInstall coc-pyright
```

Install Go language server using gopls for Golang
```
:CocInstall coc-go
```

## Plugin Manager
1. [vim-plug](https://github.com/junegunn/vim-plug)

## vim plug plugins
1. [nerdtree](https://github.com/preservim/nerdtree)
2. [COC](https://github.com/neoclide/coc.nvim)

## coc plugins
1. [coc-rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer)
2. [coc-pyright](https://github.com/fannheyward/coc-pyright)
3. [coc-go](https://github.com/josa42/coc-go)

## Resources
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide#defining-mappings)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
