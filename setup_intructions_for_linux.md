# Setup Instructions for Linux

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
