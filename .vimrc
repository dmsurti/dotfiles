" Pathogen 
execute pathogen#infect()
syntax on

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
  filetype plugin indent on
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal g'\"" | endif
endif


" show and highlight line numbers
set nu

" solarzied
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" Vim powerline 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set encoding=utf-8

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

" command t
let g:CommandTMaxHeight=10

" gundo
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_width = 25
let g:gundo_preview_height = 30
let g:gundo_right = 1

" messages
set cmdheight=2

" auto refresh file from disk when changed, works only in GUI version
set autoread
