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
map <leader><tab> :bnext<CR>
map <leader><S-tab> :bprevious<CR>
map <leader>w :bdelete<CR>
" delete all
map <leader><S-w> :bufdo bwipeout<CR>

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
  autocmd BufWritePre * undojoin | Neoformat
augroup END

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+

nmap <C-w><down> <C-w>-

let g:user_emmet_leader_key='<A>'
