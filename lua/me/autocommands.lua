vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
    autocmd BufWinEnter * :set laststatus=3
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  " Check if we need to reload the file when it changed
  au FocusGained * :checktime

  " go to last loc when opening a buffer
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif

  augroup _transparent
    autocmd!
    autocmd ColorScheme * hi Normal guibg=none ctermbg=none
    autocmd ColorScheme * hi LineNr guibg=none ctermbg=none
    autocmd ColorScheme * hi Folded guibg=none ctermbg=none
    autocmd ColorScheme * hi NonText guibg=none ctermbg=none
    autocmd ColorScheme * hi SpecialKey guibg=none ctermbg=none
    autocmd ColorScheme * hi VertSplit guibg=none ctermbg=none
    autocmd ColorScheme * hi SignColumn guibg=none ctermbg=none
    autocmd ColorScheme * hi EndOfBuffer guibg=none ctermbg=none
    autocmd ColorScheme * hi WindowSeprator guibg=NONE ctermbg=NONE
  augroup end
]])
