syntax on
filetype plugin on

colorscheme torte

set nu
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

:autocmd FileType make setlocal noexpandtab
:autocmd FileType c setlocal makeprg=make
:autocmd FileType cpp setlocal makeprg=make
:autocmd FileType java setlocal makeprg=javac\ % | :TagbarOpen
:autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
:autocmd FileType json setlocal equalprg=python\ -m\ json.tool
:autocmd FileType go setlocal makeprg=go\ run\ %
:autocmd FileType python setlocal makeprg=python\ %

nnoremap <silent> <F3> :Grep<CR> 
nnoremap <silent> <F8> :TagbarToggle<CR>:NERDTreeToggle<CR>
nnoremap <D-b> :silent! make<CR> :vert copen<CR>

set hlsearch
set cursorline
set laststatus=2

if has("gui_running")
    set guioptions-=T
    set guioptions-=r 
    colorscheme codeschool
endif
set guifont=Monaco\ for\ Powerline:h12

"set .swp files location
set directory=~

let g:Powerline_symbols = 'fancy'

call pathogen#infect()
call pathogen#helptags()
set background=dark


"debugger
":map <F8> :exe "Cbreak " . expand("%:p") . ":" . line(".")<CR>

nnoremap <D-5> :Pyclewn<CR>:Cmapkeys<CR>
let g:vim_json_syntax_conceal=0

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,.git
