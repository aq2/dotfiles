" → init plug plugin
  source $HOME/.vim/plug.vimrc

"  general settings
  syntax on
  set backspace=2
  set nocompatible
  colorscheme gravy
  set background=dark
  set ttyfast termguicolors
  set splitbelow splitright
  set rnu number numberwidth=5
  set laststatus=2 showcmd noshowmode
  set cursorline scrolloff=9 nostartofline
  set foldmethod=indent foldenable foldlevelstart=1

  set encoding=utf-8
  set hidden autoread
  set virtualedit=block
  set updatetime=100 ttimeoutlen=20
  set clipboard^=unnamed,unnamedplus

  set linebreak
  set showbreak=˜
  set fillchars=vert:\ 
  set autoindent copyindent
  filetype plugin indent on
  set wrap whichwrap+=<,>,[,]
  set shiftround shiftwidth=2
  set tabstop=2 softtabstop=2 expandtab
  " set list shows whitespace characters if you wanna
  " set list listchars=tab:‥\ ,trail:˙,nbsp:␣

set ambiwidth=double

  set path+=**
  set gdefault
  set showmatch
  set ignorecase hlsearch incsearch
  set wildmenu wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*/Music/*,*/Pictures/*

  set viminfo+=n~/.vim/tmp/viminfo
  set backup backupdir=~/.vim/tmp/backup//
  set directory=~/.vim/tmp/swap// directory+=.
  set undofile undodir=~/.vim/tmp/undo undodir+=.

  let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")


"  gvim settings
  if has('gui_running')
    set go=af ghr=0
    set linespace=4
    set mousehide mousemodel=popup mouse=a
    set guifont=FantasqueSansMono\ Nerd\ Font\ Mono\ 16
  endif


"  netrw obviously
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_dirhistmax=0
  let g:netrw_liststyle = 3


"  source other vim settings
  source $HOME/.vim/keys.vimrc
  source $HOME/.vim/nerd.vimrc
  source $HOME/.vim/lightline.vimrc
  source $HOME/.vim/autocommands.vimrc
  source $HOME/.vim/plugin-settings.vimrc

