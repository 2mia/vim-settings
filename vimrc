syntax on
filetype plugin on

colorscheme koehler
colorscheme codeschool

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
:autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
:autocmd FileType json setlocal equalprg=python\ -m\ json.tool
:autocmd FileType go setlocal makeprg=go\ run\ %

nnoremap <silent> <F3> :Grep<CR> 
nnoremap <silent> <F8> :TagbarToggle<CR>:NERDTreeToggle<CR>
nnoremap <D-B> :make<CR>

"nnoremap <silent> <D-left> :bprevious<CR>

set hlsearch
set cursorline
set laststatus=2

if has("gui_running")
    set guioptions-=T
    set guioptions-=r 
endif
set guifont=Monaco\ for\ Powerline:h12

"set .swp files location
"set directory=~

let g:Powerline_symbols = 'fancy'

call pathogen#infect()
call pathogen#helptags()
set background=dark


