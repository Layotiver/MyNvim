
# this is a discarded configration file.
imap jk <Esc>


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

map <silent> <C-e> :NERDTreeToggle<CR>

set nu
set ai
set ruler
set autoindent
