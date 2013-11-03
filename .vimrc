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
set background=light
colorscheme solarized
call togglebg#map("<F5>")

" Vim powerline 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
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

" slimv
let g:slimv_menu=1
let g:slimv_package=1
let g:slimv_repl_split=2
let g:paredit_mode=0

" messages
set cmdheight=2

" YouCompleteMe
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'lisp' : 1,
      \}
let g:ycm_autoclose_preview_window_after_completion = 1 

" Syntastic
let g:syntastic_python_checkers=['flake8']

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
