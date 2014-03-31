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
:autocmd FileType c setlocal makeprg=make\ %:r
:autocmd FileType cpp setlocal makeprg=make\ %:r\ &&\ ./%:r
:autocmd FileType java setlocal makeprg=echo\ compiling\ &&\ javac\ %\ &&\ java\ %:r
:autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
:autocmd FileType json setlocal equalprg=python\ -m\ json.tool
:autocmd FileType go setlocal makeprg=go\ run\ %\ &&\ echo\ %
:autocmd FileType python setlocal makeprg=python\ %
:autocmd BufNewFile,BufRead *.hx setfiletype haxe

nnoremap <silent> <F3> :Grep<CR> 
nnoremap <silent><Esc><Esc> :cclose<CR> 

autocmd BufEnter * lcd %:p:h
nnoremap <silent> <F8> :NERDTreeToggle<CR> :NERDTreeFind<cr> 
map <leader>r :NERDTreeFind<cr>
":TagbarToggle<CR>
"let g:NERDTreeChDirMode=2
"autocmd BufEnter * if exists("loaded_nerd_tree")  | NERDTreeFind |  wincmd l | endif
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif

nnoremap <D-r> :silent! make<CR> :vert copen<CR>:vertical resize 75<CR>:echo "make executed"<CR><C-w><C-p>

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
let Grep_Path='ggrep'

let g:Powerline_symbols = 'fancy'

call pathogen#infect()
call pathogen#helptags()
set background=dark

"no golang complete Strach window
set completeopt-=preview
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

"debugger
":map <F8> :exe "Cbreak " . expand("%:p") . ":" . line(".")<CR>

nnoremap <D-5> :Pyclewn<CR>:Cmapkeys<CR>
let g:vim_json_syntax_conceal=0

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$\|dist$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,.git


"---- go lang ---
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
