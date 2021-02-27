set nocompatible  " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set nu
set clipboard=unnamed

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let python_highlight_all=1
syntax on

set encoding=utf-8

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jiangmiao/auto-pairs'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'codota/tabnine-vim'

call vundle#end()
filetype plugin indent on

" -----------------------------
"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"      execfile(activate_this, dict(__file__=activate_this))
"      EOF
"  " IMPORTANT:
"  " Keep Plugin commands between vundle#begin/end.
"
"  " plugin on GitHub repo
"  Plugin 'scrooloose/nerdtree.git'
"  Plugin 'pangloss/vim-javascript'
"  Plugin 'mxw/vim-jsx'
"  let g:jsx_ext_required = 0
"
"  Plugin 'elzr/vim-json'
"  " Plugin 'minibufexpl.vim'
"  Plugin 'SuperTab'
"Plugin 'vim-syntastic/syntastic'
"  Plugin 'surround.vim'
"  Plugin 'Markdown'
"  Plugin 'kien/ctrlp.vim'
"  Plugin 'majutsushi/tagbar'
"  Plugin 'dracula/vim', { 'name': 'dracula' }
"  Plugin 'easymotion/vim-easymotion'
"  Plugin 'tComment'
"  Plugin 'ZoomWin'
"  Plugin 'w0rp/ale'
"  Plugin 'leafgarland/typescript-vim.git'
"  Plugin 'peitalin/vim-jsx-typescript'
"
"
"  " plugin from http://vim-scripts.org/vim/scripts.html --- Plugin 'L9'
"  " Git plugin not hosted on GitHub --- Plugin
"  'git://git.wincent.com/command-t.git'
"  " git repos on your local machine --- Plugin
"  'file:///home/gmarik/path/to/plugin'
"  " -----------------------------
"
"  call vundle#end()            " required
"  filetype plugin indent on    " required
"  filetype indent on
"  syntax enable
"
"  " ---- CUSTOM SETTINGS -------
"  colorscheme molokai
"
"  " tagbar
"  map <F6> :TagbarToggle <CR>
"
"  map <F5> :NERDTreeToggle <CR>
"  let g:NERDTreeWinSize=40
"  let NERDTreeShowHidden=1
"  let NERDTreeShowBookmarks=1
"
"  " open Nerd Tree when there was no file on the command line:
"  function! StartUp()
"       if has('gui_running')
"          set background=dark
"          colorscheme solarized
"       else
"          colorscheme zenburn
"       endif
"      if 0 == argc()
"              NERDTree
"                  end
"                  endfunction
"                  autocmd VimEnter * call StartUp()
"
"                  map <c-p> :CtrlP <CR>
"                  let g:ctrlp_custom_ignore =
"                  'coverage\|dist\|dist-*\|node_modules\|DS_Store\|git'
"                  " open ctrl p file in new buffer
"                  let g:ctrlp_switch_buffer = 0
"                  let g:ctrlp_prompt_mappings = {
"                      \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
"                          \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
"                              \ }
"
"                              set number
"                              set showcmd
"                              set cursorline
"                              set wildmenu
"                              set showmatch
"                              set hlsearch
"                              set incsearch
"                              " move vertically by visual line:
"                              nnoremap j gj
"                              nnoremap k gk
"                              " set paste
"                              set tabstop=4 softtabstop=4 shiftwidth=4
"                              expandtab
"                              autocmd BufWritePre *.js %s/\s\+$//e
"
"                              set backup
"                              set
"                              backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"                              set backupskip=/tmp/*,/private/tmp/*
"                              set
"                              directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"
"                              " disable arrow keys
"                              noremap <Up> <Nop>
"                              noremap <Down> <Nop>
"                              noremap <Left> <Nop>
"                              noremap <Right> <Nop>
"
"                              " easy motion, case insensitive
"                              let g:EasyMotion_smartcase = 1
"
"                              " ctrl w + o makes it full screen
"                              nnoremap <silent> <C-w>w :ZoomWin<CR>
"
"                              " linting / auto format on save
"                              let g:ale_sign_error = 'Île_sign_warning =
"                              ghlight ALEErrorSign ctermbg=NONE ctermfg=red
"                              highlight ALEWarningSign ctermbg=NONE
"                              ctermfg=yellow
"                              let g:ale_fix_on_save = 1
"                              let g:ale_linters = {
"                              \'javascript': ['flow', 'eslint'],
"                              \}
"                              let g:ale_fixers = {
"                              \'javascript': ['eslint'],
"                              \}
"
"                              "So I can move around in insert
"                              inoremap <C-k> <C-o>gk
"                              inoremap <C-h> <Left>
"                              inoremap <C-l> <Right>
"                              inoremap <C-j> <C-o>gj
"                              cnoremap <C-h> <Left>
"                              cnoremap <C-j> <Down>
"                              cnoremap <C-k> <Up>
"                              cnoremap <C-l> <Right>'Î
