"   shift + v + < or > mutliline back tab / insert tab
"   w, b and e moving around words
"   yy yank a line (copy)
"   p paste that one line below
"   dd delete line
"   u undo
"   ctrl r redo
"   gd go to local definition
"   e move to end of last char of cursor
"   rp paste over over again
"   /something search
"   ctrl f / b scroll down up
"   a append text right to cursor
"   A add text end of line
"   shfit + i / a move begining / ending of line 
"   ctrl + p / n / y move and select in popup windows without arrow keys
"   vertical split ctrl+w v
"   horizontal split ctrl+w s
"   ctrl+w +   ctrl+w - resize the height of current window
"   ctrl+w >   ctrl+w < resize the width of current window
"   To resize all windows to equal dimensions based on their splits, you can use Ctrl-w =.
"   n and N move around the search results

set guicursor=
set nowrap
set sidescroll=1
set hidden
set nobackup
set noswapfile
set nowritebackup
set updatetime=300
set shortmess+=c
set tabstop=4
set smarttab
set shiftwidth=4
set expandtab
set number
set numberwidth=4
set encoding=UTF-8
set nocompatible
set t_Co=256
set cmdheight=2
set background=dark
set undodir=~/.vim/undodir
set undofile
set noshowmode

filetype off

syntax enable
syntax on

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

autocmd CompleteDone * pclose

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'OmniSharp/omnisharp-vim'

" ***** themes, visual customizations
Plug 'itchyny/lightline.vim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'pbrisbin/vim-colors-off'
Plug 'huyvohcmc/atlas.vim'
Plug 'jacoborus/tender.vim'

Plug 'arcticicestudio/nord-vim'
Plug 'w0ng/vim-hybrid'
Plug 'noahfrederick/vim-hemisu'
Plug 'guns/jellyx.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'andreypopp/vim-colors-plain'
Plug 'Lokaltog/vim-monotone'

call plug#end()

let g:gruvbox_italics = 0
let g:lightline = {
        \ 'colorscheme': 'atlas',
      \ }

let g:indentLine_leadingSpaceEnabled = 1 
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_char = '│'

let g:user_emmet_leader_key='<C-Z>'

let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-tsserver',
    \ 'coc-clangd',
    \ 'coc-highlight',
    \ 'coc-markdownlint',
    \ 'coc-python',
    \ 'coc-git'
    \ ]

" ***** themes that i loved
" colorscheme off
" colorscheme paramount
" colorscheme tender
" colorscheme Spacegray
colorscheme jellybeans
" colorscheme hybrid
" colorsheme monotone
" colorscheme jellyx


"highlight Function gui=bold
"highlight Identifier gui=bold

"no more arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" ctrl + e jump end of the line
nmap <C-e> $
" ctrl + a jump begining of the line
nmap <C-a> 0
" ctrl + x :Explore
nmap <C-x> :Explore<CR>
" ctrl +s :GFiles
nmap <C-s> :GFiles<CR>
