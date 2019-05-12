" not using this, only kept fot historical interest

let hostname = substitute(system('hostname'), '\n', '', '')


"  backup/undo
  if hostname == "think"
    set viminfo+=n~/.vim/tmp/viminfo-think
    set backup backupdir=~/.vim/tmp/think/backup//
    set directory=~/.vim/tmp/think/swap// directory+=.
    set undofile undodir=~/.vim/tmp/think/undo undodir+=.
    let g:startify_session_dir = '~/.vim/session/think'
  else
    set viminfo+=n~/.vim/tmp/viminfo
    set backup backupdir=~/.vim/tmp/backup//
    set directory=~/.vim/tmp/swap// directory+=.
    set undofile undodir=~/.vim/tmp/undo undodir+=.
  endif


"  nerdtree bookmarks
  if hostname == "think"
    let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks-think")
  else
    let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
  endif

