# Build Neovim on Linux (Optional)
## Install dependencies
```
sudo apt-get install ninja-build gettext cmake unzip curl
```

## Get Neovim source code
### Clone neovim git repository
```
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
```

OR

### Download the source code from Release 
Go to [neovim git repository](https://github.com/neovim/neovim)
Go to release and download the source code

## Build Neovim
```
make CMAKE_BUILD_TYPE=Release
```

## Install Neovim
```
sudo make install
```

