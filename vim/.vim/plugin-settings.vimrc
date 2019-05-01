"... vimwiki
  let g:vimwiki_folding='expr'
  let g:vimwiki_auto_header = 1
  let g:vimwiki_hl_cb_checked = 1
  let g:vimwiki_listsyms = ' '

  let wiki_1 = {}
  let wiki_1.ext = '.md'
  let wiki_1.list_margin = 0
  let wiki_1.path = '~/vimwiki/'
  let wiki_1.syntax = 'markdown'
  let g:vimwiki_list = [wiki_1]

  " autocmd BufNewFile *.wiki :r! echo = %:t:r =
  " autocmd BufNewFile *.wiki :norm kddo


"... startify
  let g:startify_files_number = 8 
  let g:startify_change_to_dir = 1
  let g:startify_enable_special = 0
  " let g:startify_session_dir = '~/.vim/tmp/session'
  let g:startify_bookmarks = [ {'w': '~/vimwiki/index.md'} ]
  let g:startify_custom_header = map(startify#fortune#boxed(), '"    ".v:val')

  autocmd User StartifyReady set laststatus=0
  autocmd User StartifyReady setlocal cursorline
  autocmd User StartifyBufferOpened set laststatus=2

  let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]


"... Goyo and limelight
  let g:goyo=0
  let goyo_width=110
  let goyo_height=100
  let g:limelight_paragraph_span = 1

  function! s:goyo_enter()
    let g:goyo = 1
    set showtabline=0
  endfunction

  function! s:goyo_leave()
    let g:goyo = 0
    hi iCursor guifg=red guibg=yellow
  endfunction

  autocmd! User GoyoLeave nested call <SID>goyo_leave()
  autocmd! User GoyoEnter nested call <SID>goyo_enter()


"... misc
  let MRU_Add_Menu = 0
  let MRU_Window_Height = 10
  " let MRU_File = '~/.vim/tmp/vim_mru_files'
  let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'

  let g:user_emmet_install_global = 0
  " let g:user_emmet_leader_key='<C-M>'
  autocmd FileType html,css EmmetInstall

  let g:SexyScroller_MaxTime = 100
  let g:SexyScroller_EasingStyle = 2

