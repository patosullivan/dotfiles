set shell=/bin/bash
set backspace=indent,eol,start
set ff=unix
set expandtab
set shiftwidth=2
set softtabstop=2
set splitbelow splitright
set number relativenumber

let mapleader = ","
nnoremap <leader>a :Ack <Space>
nnoremap <leader>M :Magit
nnoremap <leader>gp :! git push>

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'Raimondi/delimitMate'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'mileszs/ack.vim'

call plug#end()

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set t_Co=256
colorscheme codedark

" let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#parser = 'babylon'
let g:prettier#config#arrow_parens = 'avoid'

let g:airline#extensions#tabline#enabled = 1
