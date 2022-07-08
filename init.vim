" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Nerdtree
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

" 4 spaces for tab
set tabstop=4

" Set tab inset space
set shiftwidth=4

" Copy to clipboard
set clipboard=unnamedplus

" nerdtree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

