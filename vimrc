syntax on
colorscheme koehler
set nu
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

:autocmd FileType make setlocal noexpandtab
:autocmd FileType c setlocal makeprg=make
:autocmd FileType cpp setlocal makeprg=make
:autocmd FileType java setlocal makeprg=javac\ %

nnoremap <silent> <F3> :Grep<CR> 
nnoremap <silent> <F8> :TagbarOpen<CR>:NERDTree<CR>
"nnoremap <silent> <D-left> :bprevious<CR>

set hlsearch
set cursorline
set laststatus=2

if has("gui_running")
    set guioptions-=T
endif
set guifont=Monaco\ for\ Powerline:h14

"set .swp files location
set directory=~

let g:Powerline_symbols = 'fancy'

call pathogen#infect()
call pathogen#helptags()
set background=dark
