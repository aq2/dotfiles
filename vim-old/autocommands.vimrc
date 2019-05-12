"   change text size
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+2', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-2', '')

"... zoom/restore window.
  function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
      execute t:zoom_winrestcmd
      let t:zoomed = 0
    else
      let t:zoom_winrestcmd = winrestcmd()
      resize
      vertical resize
      let t:zoomed = 1
    endif
  endfunction

  command! ZoomToggle call s:ZoomToggle()
  nnoremap <silent> <C-A> :ZoomToggle<CR>

"... make folds a wee bit more interesting
  function! MyFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return '▾  '.getline(v:foldstart).'     ∘      ('.foldsize.' lines)   '. repeat('   ∘   ', 29)
  endfunction

  set foldtext=MyFoldText()


" restore cursor position upon reopening files
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" --- change colorscheme ---
  function! ToggleColours()
    if g:colors_name == 'gravy'
      colo bubblegum-256-light
    else
      colo gravy
    endif
  endfunction

  nnoremap <silent> <leader>cc :call ToggleColours()<CR>


