
"
" Plugins
"

" Load Plug and plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
call plug#end()

"
" General settings
"
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader=","

"
" Plugin Settings
"

" Nerd tree bindings
map <F3> :NERDTreeToggle<CR>

" Fugitive bindings
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
noremap <Leader>go :Git checkout <Space>


" CtrlP Custom Ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'

"
" Autocmds
"

" Indentation
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json       setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType vue        setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php        setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType blade      setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4

"
" Theme Settings
"

" Set colorsceme to nord
silent! colorscheme nord
" Activate nord airline theme
let g:airline_theme='nord'
