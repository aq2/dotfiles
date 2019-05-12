" NERDTree File highlighting
  function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHighlightFile('vue', 'green', 'none', 'green', 'NONE')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', '#771199', 'NONE')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366aa', 'NONE')
  call NERDTreeHighlightFile('html', 'yellow', 'none', '#994499', 'NONE')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', 'NONE')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', 'NONE')

  " . . .  dunno if worx?
  function! s:attempt_select_last_file()
    let l:previous=expand('#:t')
    if l:previous != ''
      call search('\v<' . l:previous . '>')
    endif
  endfunction

  augroup NERDTree
    autocmd!
    autocmd User NERDTreeInit call s:attempt_select_last_file()
  augroup END

  autocmd User NERDTreeInit call s:attempt_select_last_file()

  " Move up a directory using "-" like vim-vinegar (usually "u" does this).
  nmap <buffer> <expr> - g:NERDTreeMapUpdir
  " Like vim-vinegar.
  nnoremap <silent> - :silent edit <C-R>=empty(expand('%')) ? '.' : expand('%:p:h')<CR><CR>

  augroup nerdtreehidecwd           " remove slashes from NERDTree
    autocmd!
    autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
  augroup end

  let NERDTreeMinimalUI=1
  let NERDTreeQuitOnOpen=1
  let NERDTreeShowBookmarks=1
  let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
  
  autocmd FileType tagbar, nerdtree setlocal signcolumn=no
  " autocmd FileType tagbar,nerdtree setlocal laststatus=0

