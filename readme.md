# neovim-config
My configuration of neovim using the vim plugin manager.

## Setup instructions

go to the neovim-config folder
```
cd neovim-config
```
Copy this config to the vim configuration file
```
cp init.lua ~/.config/nvim/init.lua
```

Install all the vim plug extensions
```
:PlugInstall
```

## Install language extensions
Install rust analyzer plugin
```
:CocInstall coc-rust-analyzer for Rust
```

Install pyright extentsion for Python
```
:CocInstall coc-pyright
```

Install Go language server using gopls for Golang
```
:CocInstall coc-go
```

## vim plug plugins
<ol>
  <li> vim-plug: https://github.com/junegunn/vim-plug </li>
  <li> nerdtree: https://github.com/preservim/nerdtree </li>
  <li> COC: https://github.com/neoclide/coc.nvim </li>
</ol>

## coc plugins
<ol>
  <li> coc-rust-analyzer: https://github.com/fannheyward/coc-rust-analyzer </li>
  <li> coc-pyright: https://github.com/fannheyward/coc-pyright </li>
  <li> coc-go: https://github.com/josa42/coc-go </li>
</ol>

## Resources
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide#defining-mappings)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
