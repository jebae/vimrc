call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
call plug#end()

" paste without yank current block
vnoremap p "_dP

" tab size
set tabstop=2
set shiftwidth=2

" highlight search
set hlsearch

" no breaking new line for long line
set nowrap

" enable autoindent
set autoindent

" show line number
set nu

" update time
set updatetime=300

" set behavior to split right
set splitright

" enable backspace
set backspace=indent,eol,start

" enable ctrlp
set runtimepath^=~/.vim/plugged/ctrlp.vim

" ctrlp ignore option
set wildignore=\.git,node_modules,\.DS_Store

" ctrlp show hidden file (e.g. .storybook)
let g:ctrlp_show_hidden=1

" ctrlp search only in current directory
let g:ctrlp_cmd='CtrlP :pwd'

" execute NERDTree when execute vim
autocmd vimenter * NERDTree

" source custom vimrc if exist
if filereadable(".vimrc") && getcwd() != $HOME
	source .vimrc
endif

" coc extension
let g:coc_global_extensions = [
\	'coc-json',
\	'coc-tsserver',
\ 'coc-eslint',
\ 'coc-stylelintplus',
\]

" coc show error, warning error message at independant column
set signcolumn=number

" coc go to definition
nmap <silent> gd <Plug>(coc-definition)

" coc show definition
nnoremap <silent> K :call CocAction('doHover')<CR>

" airline
let g:airline_theme='jellybeans'

colorscheme challenger_deep

" highlight color (these options have to be written below colorscheme)
hi Search ctermbg=magenta ctermfg=black
hi IncSearch ctermbg=magenta ctermfg=black
hi Visual ctermbg=darkgray

