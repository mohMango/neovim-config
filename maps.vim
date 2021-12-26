" Description: Keymaps

" source
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
" PlugInstall
nnoremap <Leader>pi :PlugInstall<CR>
" PlugClean
nnoremap <leader>pc :PlugClean<CR>
" PlugUpdate
nnoremap <leader>pu :PlugUpdate<CR>
" PlugUpgrade
nnoremap <leader>pg :PlugUpgrade<CR>

" float term 
nnoremap <silent> <leader>ff :FloatermNew<CR>
tnoremap <silent> ,ff <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <leader>fp :FloatermPrev<CR>
tnoremap <silent> ,fp <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <leader>fn :FloatermNext<CR>
tnoremap <silent> ,fn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>` :FloatermToggle<CR>
tnoremap <silent> ,` <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <leader>fk :FloatermKill<CR>
tnoremap <silent> ,fk <C-\><C-n>:FloatermKill<CR>

" save
nnoremap <silent> <leader>w <Esc>:w<CR>
" quit
nnoremap <silent> <leader>q <Esc>:q<CR>

" GIT
nnoremap <leader>g :G<CR>

" General maps
" move line up and down
nnoremap <A-j> :m.+1<CR>==
nnoremap <A-k> :m.-2<CR>==
inoremap <A-j> <Esc>:m.+1 i<CR>==gi
inoremap <A-k> <Esc>:m.-2 i<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"----------------------------------
" duplicate the line
nnoremap <leader>d :t.<CR>
inoremap <C-d> <Esc>:t. i<CR>==gi
vnoremap <leader>d :t.<CR>

"----------------------------------
" next and previous buffer
nnoremap <leader><tab> :bnext<CR>
nnoremap <leader><S-tab> :bprevious<CR>
nnoremap <silent> <leader>c <Esc>:bdelete<CR>
" delete all
nnoremap  <leader><S-c> :bufdo bwipeout<CR>

"----------------------------------
" commentary
map <leader>/ gcc <Esc>
" undotree
nnoremap <leader>u :UndotreeToggle<CR>
" new line with a-enter
inoremap <A-enter> <Esc>o


"----------------------------------
" Delete without yank
nnoremap <leader>D "_d
nnoremap x "_x

"----------------------------------
" better undo
inoremap , ,<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap . .<c-g>u
" better jump
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

"----------------------------------
" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

"----------------------------------
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


"------------------------------
" format on save
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
map <leader><left> <C-w>h
map <leader><up> <C-w>k
map <leader><down> <C-w>j
map <leader><right> <C-w>l
map <leader>h <C-w>h
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>l <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+

nmap <C-w><down> <C-w>-

let g:user_emmet_leader_key='<A-e>'
