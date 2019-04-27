"... vimwiki
  let g:vimwiki_folding='expr'
  let g:vimwiki_auto_header = 1
  let g:vimwiki_hl_cb_checked = 1
  let g:vimwiki_listsyms = ' '
  " let g:vimwiki_list = [{'path': '~/vimwiki'}]
   
  " let wiki_1 = {}
  " let wiki_1.path = '~/vimwiki/'

  let wiki_2 = {}
  let wiki_2.ext = '.md'
  let wiki_2.path = '~/vimwiki/'
  let wiki_2.syntax = 'markdown'
  let wiki_2.list_margin = 0

  let g:vimwiki_list = [wiki_2]


  " autocmd BufNewFile *.wiki :r! echo = %:t:r =
  " autocmd BufNewFile *.wiki :norm kddo


"... startify
  let g:startify_files_number = 8 
  let g:startify_change_to_dir = 1
  let g:startify_enable_special = 0
  " let g:startify_fortune_use_unicode = 1
  " let g:startify_session_dir = '~/.vim/tmp/session'
  let g:startify_bookmarks = [ {'w': '~/vimwiki/index.wiki'}, '~/.zshrc' ]
  let g:startify_custom_header = map(startify#fortune#boxed(), '"    ".v:val')

  autocmd User StartifyReady set noshowcmd
  autocmd User StartifyReady let &l:stl = ' '
  
  autocmd User Startified set showcmd
  autocmd User Startified setlocal cursorline

  let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]


"... Goyo and limelight
  let g:goyo=0
  let goyo_width=110
  let goyo_height=98
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
  let MRU_Window_Height = 15
  let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
  let MRU_File = '~/.vim/vim_mru_files'

  let g:user_emmet_install_global = 0
  " let g:user_emmet_leader_key='<C-M>'
  autocmd FileType html,css EmmetInstall

  let g:SexyScroller_MaxTime = 100
  let g:SexyScroller_EasingStyle = 2

