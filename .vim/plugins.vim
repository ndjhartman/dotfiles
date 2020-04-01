" Plugins
call plug#begin('~/.vim/plugged')

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'

    " Status line
    Plug 'itchyny/lightline.vim'
    set laststatus=2
    set noshowmode

    " Multiple cursors
    Plug 'terryma/vim-multiple-cursors'

    " Color schemes 
    Plug 'ayu-theme/ayu-vim'	

    " Indent lines
    Plug 'Yggdroot/indentLine'
    let g:indentLine_char_list = ['|', '¦', '┆', '┊']

    " Nerd tree
    Plug 'preservim/nerdtree'

call plug#end()

