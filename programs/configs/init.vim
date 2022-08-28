set number
set mouse=a
set ignorecase
set noswapfile
set colorcolumn=80

set termguicolors
colorscheme old-hope

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

