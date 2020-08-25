"To install Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"I also have Vista - use  mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start and git clone https://github.com/liuchengxu/vista.vim.git --depth=1 ~/.vim/pack/git-plugins/start/vista.vim
syntax enable
set mouse=a
set mouse=n
set background=dark
set number
colorscheme edge
map <F10> :Sexplore <CR>
map <C-b> :terminal<CR>

set omnifunc=syntaxcomplete#Complete


"For debugging - I regularly change these mappings to better suit the language
"I'm programming in. In addition, I also open a new terminal with CTR-B and
"use jdlb
map <F1> :q <CR>
map <F2> :!python3 %<CR>
map <F3> :terminal java %<CR>
map <F4> :resize -13 <CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>

"Change cursor depending on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:pymode_python = 'python3'

set nocompatible             
filetype plugin on  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"This is needed
Plugin 'VundleVim/Vundle.vim'

"Changes powerline at the bottom
Plugin 'itchyny/lightline.vim'

Plugin 'yavdb'

"Ale - asyncronous lint engine
Plugin 'w0rp/ale'

Plugin 'Shougo/vimproc.vim'

Plugin 'idanarye/vim-vebugger'

"Personal wiki
Plugin 'vimwiki/vimwiki'

"Code completion
Plugin 'ajh17/VimCompletesMe'

Plugin 'word_complete.vim'

call vundle#end()    
        
filetype plugin indent on    
set laststatus=2
set backspace=2

"What does this do?
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType vim let b:vcm_tab_complete = 'vim'
set splitbelow
