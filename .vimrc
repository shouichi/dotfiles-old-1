" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

Plug 'hashivim/vim-terraform'

Plug 'rust-lang/rust.vim'

Plug 'dart-lang/dart-vim-plugin'

call plug#end()

filetype plugin on
filetype indent on

colorscheme desert

" show line numbers
set number

" no backup/swap files
set nobackup
set noswapfile

" auto cd to file dir
set autochdir

" allow opening
set hidden

" incremental search
set incsearch

" hilight matched
set hlsearch

" case insensitive (sensitive iff capital)
set ignorecase
set smartcase

" show all matches
set wildmenu

" list all then complete the next full match
set wildmode=list,full

" always show status line
set laststatus=2

set statusline=
" full path
set statusline+=%F
" buffer number
set statusline+=[%n]
" modified flag
set statusline+=%m
" aligh right
set statusline+=%=
" file encoding
set statusline+=%{&fileencoding?&fileencoding:&encoding}
" file format
set statusline+=[%{&fileformat}]
" line and column numbers
set statusline+=(%l,%c)
" hex value under cursor
set statusline+=[0x%02B]

" set ruler
set colorcolumn=80

" TODO
set autoindent smartindent
set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab

" m: break a line at a multibyte character of 256 or higher
" M: no space when joining multibyte characters
set formatoptions+=mM

" show tabs and trailing spaces
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<
highlight SpecialKey cterm=underline, ctermfg=darkgrey

let mapleader='['
let maplocalleader=','

" key mappings for normal, visual, select and operator mode
noremap - $
noremap <C-j> 3gj
noremap <C-k> 3gk

" key mappings for nomal mode
nnoremap ss :w<CR>

" fzf
nnoremap <silent> <Leader>f :GFiles<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>l :BLines<CR>
nnoremap <silent> <Leader>h :History<CR>

" insert mode key mappings
inoremap jj <Esc>:w<CR>
inoremap <C-a> <Home>
inoremap <C-e> <End>

" vim-go
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" rust.vim
let g:rustfmt_autosave = 1

" remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
