set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" themes
" good, but not full type supported
" Plugin 'dracula/vim'
" good, but 256 not work
" Plugin 'gosukiwi/vim-atom-dark'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" searching
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-ctrlspace/vim-ctrlspace'

" coding
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'

" shell prompt
" Plugin 'edkolev/promptline.vim'

" todo
Plugin 'mattn/webapi-vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'

call vundle#end()
filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim

" ********************************* 
" [GUI/Terminal]
"
" color dracula
colorscheme molokai_dark

if has("gui_macvim")
    set guifont=Monaco:h16
else
endif

" ********************************* 
" [Normal]
"
set noswapfile nobackup nowritebackup noundofile
set expandtab autoindent smartindent 
set wrap linebreak incsearch
set showmatch showmode

set guioptions=tm
set fileencodings=utf8,cp936
set iskeyword+=_,-,$,@,%,#
set tabstop=4 shiftwidth=4 softtabstop=4 textwidth=0
set wrapmargin=0 history=100

syntax on
let mapleader="'"

" ********************************* 
" [Airline]
"
set laststatus=2
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN: %{butnr("%")}'
"
" defaults
" let g:airline#extensions#tabline#enable = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" ********************************* 
" [CtrlP]
" CtrlP, CtrlPBuffer, CtrlPMRU, can page up/down.
" CtrlPMixed
" let g:ctrlp_map='<c-p>'
" let g:ctrlp_cmd='CtrlP'
" 
" r: nearest repo directory
" wr: start from cwd instead of current
" a/c: current file directory, unless subdirectory of cwd
" 0/'': disable
" let g:ctrlp_working_path_mode='ra'

" ********************************* 
" [Tagbar]
nmap <Leader>t :TagbarToggle<cr>


" ********************************* 
" [Syntastic]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" mapping
nmap <Leader>syc :SyntasticCheck<cr>
nmap <Leader>syr :SyntasticReset<cr>
nmap <Leader>syt :SyntasticToggleMode<cr>


" ********************************* 
" [GitGutter]
set updatetime=400

" ********************************* 
" [Emmit-vim]
imap <c-y>h <c-y>,
vmap <c-y>h <c-y>,
let g:user_emmet_mode='a'
" change behaviors
let g:user_emmet_settings={
\    'php': {
\        'extends': 'html',
\        'filters': 'c',
\    },
\    'xml': {
\        'extends': 'html',
\    },
\}

" ********************************* 
" [TComment]
" 
map <Leader>/ :TComment<cr>
" Comment the current inner paragraph
map <Leader>? <c-_>p

" ********************************* 
" [Others]
"
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

map <Leader>zz o```<cr>```<esc>2xka
map <Leader>zoc o```objc<cr><cr>```<esc>2xki
map <Leader>w O[Neo]<esc>:TComment<cr>f]a 

" nnoremap <Leader>s :set 
map <Leader>p "+gp
map <Leader>utf :set enc=utf-8<cr>
map <Leader>gbk :set enc=cp936<cr>

map <Leader>wq :w !sudo tee %<cr>:q!<cr>
map <Leader>uu :!plantuml %<cr>
map <Leader>tt :!~/Scripts/py/t 
map <Leader>ttt :!~/Scripts/py/t <c-r><c-w><cr>
map <Leader>md :!~/Scripts/py/gendoc % && mv %.html ~/www/md/<cr>

" autoclose
let g:AutoClosePairs_add= "<> | \" '"

autocmd FileType md
    \ let b:AutoClosePairs = AutoClose#ParsePairs("() {} \" '")

" [Neo] vim-sneak
nmap <Leader>f <Plug>Sneak_s
nmap <Leader>F <Plug>Sneak_S
xmap <Leader>f <Plug>Sneak_s
xmap <Leader>F <Plug>Sneak_S
omap <Leader>f <Plug>Sneak_s
omap <Leader>F <Plug>Sneak_S
let g:sneak#streak = 1

" [Neo] vim-markdown
" set [no]fen
let g:vim_markdown_folding_disabled=1
" let g:vim_markdown_initial_foldlevel=1
let g:vim_markdown_no_default_key_mappings=0
set nofen

" [Neo] NERD
nnoremap <Leader>n :NERDTreeToggle<cr>
let NERDChristmasTree=1
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" [Neo] YouCompleteMe
" let g:clang_complete_copen=1
" let g:clang_periodic_quickfix=1
" let g:clang_snippets=1
" let g:clang_close_preview=1
" let g:clang_use_library=1
" let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

" [Neo] gundo
let g:gundo_right = 1
let g:gundo_width = 60
let g:gundo_preview_height = 40
nnoremap <Leader>undo :GundoToggle<cr>

" [Neo] ultisnips TODO
" disable netrw's gx mapping
let g:netrw_nogx = 1
" <Plug>(openbrowser-smart-search)
nmap open <Plug>(openbrowser-open)
vmap open <Plug>(openbrowser-open)

" [Neo] ultisnips
" set runtimepath+=~/.vim/bundle/ultisnips
" let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<Leader><Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

" [Neo] vim-easymotion
" map <Leader> <Plug>(easymotion-prefix)

