# Setup Intructions for Windows

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
