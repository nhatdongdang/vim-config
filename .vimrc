set encoding=utf-8
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set backspace=indent,eol,start
syntax on

set ttimeout
set ttimeoutlen=10
set ttyfast
:set paste
" Keymap
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>
vnoremap <Tab>  >gv
vnoremap <S-Tab>  <gv

if has('termguicolors')
    " Turns on true terminal colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " Turns on 24-bit RGB color support
    set termguicolors

    " Defines how many colors should be used. (maximum: 256, minimum: 0)
    set t_Co=256
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:airline_powerline_fonts = 1

set background=dark
colorscheme onedark
