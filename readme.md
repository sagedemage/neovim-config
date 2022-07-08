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

## Install rust-analyzer Language Server Binary
You must install rust-analyzer binary for it to work with rust-tools plugin

Make local bin directory
```
$ mkdir -p ~/.local/bin
```

Get rust-analyzer binary
```
$ curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
```

Make rust-analyzer binary executable
```
$ chmod +x ~/.local/bin/rust-analyzer
```


## plugins
<ol>
  <li> vim-plug: https://github.com/junegunn/vim-plug </li>
  <li> nerdtree: https://github.com/preservim/nerdtree </li>
  <li> vim-go: https://github.com/fatih/vim-go </li>
  <li> COC: https://github.com/neoclide/coc.nvim </li>
  <li> rust-tools: https://github.com/simrat39/rust-tools.nvim </li>
</ol>

## Resources
* [Getting started using Lua in Neovim](https://github.com/nanotee/nvim-lua-guide#defining-mappings)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
* [Rust Analyzer User Manuel](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary)
