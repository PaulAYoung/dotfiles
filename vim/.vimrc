set nocompatible
filetype off "required by vundle



call plug#begin('~/.vim/bundle')
"chosen bundles here
"Plug 'klen/python-mode'
"Plug 'altercation/vim-colors-solarized'
"Plug 'mhinz/vim-startify'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
Plug 'Shougo/vimproc', {'do' : 'make -f make_unix.mak'}
Plug 'Shougo/unite-outline'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'oplatek/Conque-Shell'

call plug#end()

filetype plugin indent on
let mapleader = ";"

"default options
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab
set formatoptions=croql
set number
set hlsearch

"appearance
colorscheme darkocean

"Unite mappings
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
	" navigate with c-j, c-k
	imap <buffer> <C-j> <Plug>(unite_select_next_line)
	imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction
"Opening shortcuts
nnoremap <leader>ub :Unite -start-insert buffer<cr>
nnoremap <leader>uo :Unite -start-insert outline<cr>
nnoremap <leader>ur :Unite -start-insert file_mru<cr>
nnoremap <leader>uf :Unite -start-insert file_rec/async<cr>

"YCM shortcuts
let g:ycm_key_list_select_completion = ['<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_server_python_interpreter = '/usr/bin/python'

"airline setup
set laststatus=2
set t_Co=256
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme="luna"

"custom shortcuts
nnoremap <leader>f :NERDTreeTabsToggle<cr>


" custom filetype detection
au BufNewFile,BufRead *.tag set filetype=html
