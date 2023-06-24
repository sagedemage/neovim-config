# neovim-config
My configuration of Neovim using extensions.

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

## Plugin Manager
1. [vim-plug](https://github.com/junegunn/vim-plug)

## vim plug plugins
1. [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim) 
2. [vim-signify](https://github.com/mhinz/vim-signify)

## Resources
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide#defining-mappings)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
