colorscheme zenburn
syntax on
imap jk <Esc>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
set autoindent
set number
set hlsearch " hightlight matches
set expandtab
set tabstop=4
set shiftwidth=4
" navigate among panes with Ctrl and h j k l i
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" resize panes with Shift + arrow keys
nmap<S-right> <C-w>>
nmap<S-left> <C-w><
nmap<S-down> <C-w>-
nmap<S-up> <C-w>+
" format all file
"nmap == mzggvG='z
" new split panes to right and bottom
set splitbelow
set splitright
set backspace=indent,eol,start
" starcraft 2 position style:
" need to press m + 1 and not Ctrl + 1 thought, since there are difficulties
" with mapping Ctrl + number
nmap m1 ma
nmap m2 ms
nmap m3 md
nmap m4 mf
nmap m5 mg
nmap m6 mh
nmap m7 mj
nmap 11 'azz
nmap 22 'szz
nmap 33 'dzz
nmap 44 'fzz
nmap 55 'gzz
nmap 66 'hzz
nmap 77 'jzz

" make sure vim receive all key with arrow from tmux
if &term =~ '^screen'
" tmux will send xterm-style keys when its xterm-keys option is on
execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"
endif

