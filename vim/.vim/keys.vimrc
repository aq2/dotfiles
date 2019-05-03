" --- keyboard mapping ---
 
" --- Quickly edit/reload dotfiles ---
  nmap <silent> <leader>ev :e $MYVIMRC<CR>
  nmap <silent> <leader>sv :so $MYVIMRC<CR>
  nmap <leader>ez :e ~/.zshrc<CR>

" --- navigation ---
  " scroll wrapped lines naturally
  nnoremap j gj
  nnoremap k gk

  " using $ for end of line is dumb - use 9 or b/e
  " nnoremap b ^
  nnoremap 9 $
  " nnoremap e $

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

  cmap Q q<CR>
  cmap waq wqa<CR>
  cmap qq qa!

  " .... old habits die hard
  inoremap <C-v> <ESC>"+pa
  vnoremap <C-c> "+y
  vnoremap <C-d> "+d
  nnoremap <C-s> :w<CR>

  " highlight last inserted text
  nnoremap gV `[v`]

  " w!! let's you sudo save a file
  cmap w!! w !sudo tee % >/dev/null

" --- pluginz ---
  map <Leader>n :NERDTreeToggle<CR>
  map <Leader>g :Goyo<CR>
  map <Leader>l :Limelight!!<CR>
  map <Leader>hl :nohl<CR>
  map <silent> <Leader>st :Startify<CR>
  nnoremap <Leader>r :MRU<CR>
  map <Leader>ec :EC<CR>
  map <Leader>mu  :MundoToggle<CR>

  ab wt :VimwikiTable
  
  map <leader>cd :cd %:p:h<cr>:pwd<cr>


  nnoremap <Leader>f :FZF<CR>
  nnoremap <Leader>! :FZF!<CR>
  nnoremap <C-p> :<C-u>FZF<CR>

  " map <Leader>m <C-h><C-h> 

  nmap <Leader># gcc

" --- symbology ---
  imap -> <C-k>->
  imap -. <C-k>->
  imap -= <C-k>-> 
  imap => <C-k>=>
  imap <- <C-k><-
  imap ,- <C-k><-
  imap :) 😃
  imap :( 😕
  imap *** *         *           *           *           *
  imap qw ❓
  imap omg 😱
  imap ==  
  imap --  
  imap //  
  imap 88  
  imap 11 ❢  
  imap idee  
  imap 66  
  imap 77  
  imap hh 
" 🎬💰💻🖥😺😸😀😱🙀😕😀😁😃
"            😀😃😁😄😾


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
 


" " --- marks ---
"   " mark/unmark line  \l marks line, 'l returns to marked line, :match to clear
"   nnoremap <silent> <Leader>k mk:execute 'match Search /\%'.line('.').'l/'<CR>
"   " nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
"   " \p = permanent marker
"   nnoremap <silent> <Leader>p :exe "let m = matchadd('WildMenu','\\%" . line('.') . "l')"<CR>
"   " \q clears all, perms and temps
"   nnoremap <silent> <Leader>q :call clearmatches()<CR>


  " --- cancel task in vimwiki
  nmap <A-c> glx>


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

