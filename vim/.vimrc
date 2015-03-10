set nocompatible
filetype off "required by vundle

"set rtp+=~/.vim/bundle/vundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

"Vundle loads vundle
NeoBundleFetch 'Shuogo/neobundle.vim'

"chosen bundles here
"NeoBundle 'klen/python-mode'
"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'mhinz/vim-startify'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'tomtom/tlib_vim.git'
NeoBundle 'MarcWeber/vim-addon-mw-utils.git'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Valloric/YouCompleteMe', {
      \ 'build' : {
      \     'unix': './install.sh --clang-completer',
      \    },
      \  }
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite-outline'
NeoBundle 'marijnh/tern_for_vim', {
      \ 'build': {
      \    'unix': 'npm install',
      \    },
      \ }
NeoBundle 'oplatek/Conque-Shell'

call neobundle#end()
NeoBundleCheck

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
