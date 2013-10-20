" dont be compatible with vi
set nocompatible

" dont write in more than 80 cols and show a vertical line indicator 
set textwidth=79
set cc=80

" set autocompletion similar to zsh
set wildmenu
set wildmode=full

" make vim remeber last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal g'\"" | endif
endif

" Pathogen 
execute pathogen#infect()
syntax on
filetype plugin indent on

" show and highlight line numbers
set nu

" solarzied
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=light
colorscheme solarized

" Vim powerline 
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

" vim backup location
set backupdir=~/tmp/vim-backup

" always convert tabs into spaces
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" nerd tree
nnoremap <F6> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$']

" tagbar
nnoremap <F8> :TagbarToggle<CR>

" command t
let g:CommandTMaxHeight=10

" gundo
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_width = 45
let g:gundo_preview_height = 40
let g:gundo_right = 1

" pyclewn
let g:pyclewn_args="--window=bottom"
nnoremap <leader>sd :Pyclewn pdb<CR>
nnoremap <leader>ed :Cquit<CR>
nnoremap <leader>mk :Cmapkeys<CR>
nnoremap <leader>uk :Cmapkeys<CR>

" jedi-vim, jedi is a code helper for python
let g:jedi#use_tabs_not_buffers=0
