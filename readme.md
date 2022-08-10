# neovim-config
My configuration of neovim using the vim plugin manager.

## Setup Instructions for Linux

Install vim plug plugin manager ([vim-plug installation](https://github.com/junegunn/vim-plug#installation))
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Go to the root directory of the repo
```
cd neovim-config
```

Create nvim directory
```
mkdir ~/.config/nvim
```

Copy this config to the neovim config directory
```
cp -v init.lua ~/.config/nvim/init.lua
```

## Setup Instructions for Windows

Install vim plug plugin manager ([vim-plug installation](https://github.com/junegunn/vim-plug#installation)) 
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

Go to the root directory of the repo
```
cd neovim-config
```

Create the nvim directory
```
mkdir ~\AppData\Local\nvim
```

Copy this config to the neovim config directory
```
cp -v init.lua ~\AppData\Local\nvim\init.lua
```

## Install vim extensions

Install all the vim plug extensions
```
:PlugInstall
```

## Install language extensions
Install tsserver extension for JavaScript and TypeScript
```
:CocInstall coc-tsserver
```

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
3. [auto-pairs](https://github.com/jiangmiao/auto-pairs)
4. [vim-instant-markdown](https://github.com/instant-markdown/vim-instant-markdown)
5. [vim-signify](https://github.com/mhinz/vim-signify)

## COC plugins
1. [coc-tsserver](https://github.com/neoclide/coc-tsserver)
2. [coc-rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer)
3. [coc-pyright](https://github.com/fannheyward/coc-pyright)
4. [coc-go](https://github.com/josa42/coc-go)

## Resources
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide#defining-mappings)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
