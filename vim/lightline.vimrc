  source ~/.vim/colors/gravyLine.vim
  
  let g:lightline = {
      \ 'colorscheme': 'gravyLine',
      \ 'component_function': {
      \   'gitAQ': 'GitAQ' 
      \ },
      \ 'active': {
      \   'left': [['mode'], ['gitAQ'], ['buffers']] ,
      \   'right': [['percent', 'lineinfo']]
      \ },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'inactive': {},
  \ }
  
  " can we change left?
  " rtfm and do the tutorial!

  let g:lightline#bufferline#modified  = ' 😱'
  let g:lightline#bufferline#read_only  = ' '
  let g:lightline.component_type   = {'buffers': 'tabsel'}
  let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
  let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}


  function! GitAQ()
    if gitbranch#name() == ''
      return ''
    elseif gitbranch#name() == 'master'
      return ''
    else
      return ''
  endfunction
    
  
  function! LightlineUpdateAQ()
    if g:goyo==0
      call lightline#update()
    endif
  endfunction


  au BufWritePost,TextChanged,TextChangedI * call LightlineUpdateAQ()


  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)
  nmap <Leader>7 <Plug>lightline#bufferline#go(7)
  nmap <Leader>8 <Plug>lightline#bufferline#go(8)
  nmap <Leader>9 <Plug>lightline#bufferline#go(9)
  nmap <Leader>0 <Plug>lightline#bufferline#go(10)

