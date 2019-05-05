" --- vim keyboard mapping ---
 
" --- Quickly edit/reload dotfiles ---
  nmap <leader>ez :e ~/.zshrc<CR>
  nmap <silent> <leader>ev :e $MYVIMRC<CR>
  nmap <silent> <leader>sv :so $MYVIMRC<CR>

" --- navigation ---
  " scroll wrapped lines naturally
  nnoremap j gj
  nnoremap k gk

  "  leader Tab switches windows and sets pwd
  map <leader><Tab> <C-W>W:cd %:p:h<CR>:<CR>
  nmap <Tab> <Plug>VimwikiNextLink

  " remap arrow keys to scroll buffers
  nnoremap <S-Left> :bprev<CR>
  nnoremap <S-Right> :bnext<CR>

" --- my shortcuts ---
  " lazy man's colon
  nnoremap ; :

  " quick entry/exit into insert mode
  imap jj <Esc>
  nnoremap <Space> li
  nnoremap <Del> i<Del>

  cmap qq qa!
  cmap Q q<CR>
  cmap waq wqa<CR>

  " .... old habits die hard
  vnoremap <C-c> "+y
  vnoremap <C-d> "+d
  nnoremap <C-s> :w<CR>
  inoremap <C-v> <ESC>"+pa

  " highlight last inserted text
  nnoremap gV `[v`]

  " w!! let's you sudo save a file
  cmap w!! w !sudo tee % >/dev/null

" --- pluginz ---
  map <Leader>ec :EC<CR>
  map <Leader>g :Goyo<CR>
  map <Leader>hl :nohl<CR>
  nnoremap <Leader>r :MRU<CR>
  map <Leader>l :Limelight!!<CR>
  map <Leader>mu  :MundoToggle<CR>
  map <Leader>n :NERDTreeToggle<CR>
  map <silent> <Leader>st :Startify<CR>


" --- symbology ---
  imap 11 ❢  
  imap 66  
  imap 77  
  imap :) 😃
  imap :( 😕
  imap qw ❓
  imap ==  
  imap --  
  imap //  
  imap 88  
  imap hh 
  imap omg 😱
  imap idee  
  imap -> <C-k>->
  imap -. <C-k>->
  imap -= <C-k>-> 
  imap <- <C-k><-
  imap ,- <C-k><-

  "            


" --- bubbles ---
  " Bubble single lines
  nmap <S-Up> ddkP
  imap <S-Up> <ESC>ddkPi
  nmap <S-Down> ddp
  imap <S-Down> <ESC>ddpi
  " Bubble multiple lines
  vmap <S-Up> xkP`[V`]
  vmap <S-Down> xp`[V`]
  imap <S-Up> <ESC>xkP`[V`]i
  imap <S-Down> <ESC>xp`[V`]

" syntax stuff
  nmap <leader>sp :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc


  map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"   new ones to learn  

  ab mru :MRU
  ab wt :VimwikiTable

  nmap <Leader># <Plug>Commentary
  
  " \a does copy/paste/comment in normal and viz too 😃
  nmap <Leader>a  yypgcck
  xmap <silent> <leader>a yjpgV<Plug>Commentary<CR>
  
  nnoremap <Leader>q :bd<CR>
  map <leader>cd :cd %:p:h<cr>:pwd<cr>

  " using $ for end of line is dumb - use END for end of line
  " or D for d$

  " hilite changed lines
  nnoremap <Leader>ch :EC<CR>:CT<CR>
  nnoremap <Leader>sc :set scl=no<CR>m1

  nnoremap <Leader>! :FZF!<CR>
  nnoremap <C-p> :<C-u>FZF<CR>

