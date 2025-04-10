" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'rstacruz/vim-closer'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'

" Solidity syntax highlighting
Plug 'tomlion/vim-solidity'
call plug#end()

set background=dark
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
syntax on
filetype plugin indent on
set termguicolors
highlight clear LineNr

" Better display for messages
set cmdheight=0
set laststatus=2 " lightline
set noshowmode " lightline - remove --insert--
set updatetime=300

if !has('gui_running')
	set t_Co=256
endif

" colorscheme for lightline
let g:lightline = {
	\ 'colorscheme': 'base16_gruvbox_dark_hard',
	\ }

" Editor settings
set autoindent
set encoding=utf-8
set scrolloff=1 " Determines the number of context lines you would like to see
		" above and below the cursor
set hidden
set wrap
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable automatic comment insertion

" tab settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
"set noexpandtab
set expandtab

" Proper search
set incsearch
set ignorecase
set smartcase

" GUI settings
set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2
set number
"set relativenumber
set showcmd
set showmatch

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" language setting
let g:python_recommended_style = 0
let g:rust_recommended_style = 0
