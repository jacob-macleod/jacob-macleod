"*******************************
"   Jacob MacLeod
"   Vimrc
"   Note: To setup autocomplete you need to enter the you complete me library
"   in the vim plugin library and run the install gadgets executable. Command
"   arguments help define what languages you want support for. You can find
"   the arguments by checking out the repository on github
"********************************

" ******************************
"   SETTING SETUP
"*******************************

set mouse=a
" Turn on syntax highlighting
:syntax on
" Turn on ruler and numbers
set ruler
set number

set encoding=UTF-8

" Remove mappings for space and set space to the leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" Change cursor depending on whether insert or normal mode is being used
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"******************************
"   PLUGIN SETUP
"******************************

" Install the vim plug plugins
call plug#begin(expand('~/.vim/plugged'))
    Plug 'scrooloose/nerdtree'
    Plug 'tomasiser/vim-code-dark'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    Plug 'ryanoasis/vim-devicons'
    Plug 'joshdick/onedark.vim'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'dense-analysis/ale'
    Plug 'ap/vim-css-color'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'puremourning/vimspector'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mzlogin/vim-markdown-toc'
    Plug 'mattn/emmet-vim'
    Plug 'sheerun/vim-polyglot'
call plug#end()

"****************************
"   VISUAL SETTINGS SETUP
"****************************

" Set the colorscheme
"colorscheme codedark
colorscheme onedark

" Set up airline settings
"let g:airline_theme = 'powerlineish'
let g:airline_theme = "onedark"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1


let g:startify_custom_header = [
\ '          _    _________ _______  _______            _________ _______ ',
\ '|\     /|( \   \__   __/(  ____ )(  ___  )  |\     /|\__   __/(       )',
\ '| )   ( || (      ) (   | (    )|| (   ) |  | )   ( |   ) (   | () () |',
\ '| |   | || |      | |   | (____)|| (___) |  | |   | |   | |   | || || |',
\ '| |   | || |      | |   |     __)|  ___  |  ( (   ) )   | |   | |(_)| |',
\ '| |   | || |      | |   | (\ (   | (   ) |   \ \_/ /    | |   | |   | |',
\ '| (___) || (____/\| |   | ) \ \__| )   ( |    \   /  ___) (___| )   ( |',
\ '(_______)(_______/)_(   |/   \__/|/     \|     \_/   \_______/|/     \|',
\ '  _____  _                 _  _    _               _               _                          __  _       ',
\ ' |_   _|| |_   ___   _  _ | || |_ (_) _ __   __ _ | |_  ___  __ __(_) _ __    __  ___  _ _   / _|(_) __ _ ',
\ '   | |  | '' \ / -_) | || || ||  _|| || ''  \ / _` ||  _|/ -_) \ V /| || ''  \  / _|/ _ \| '' \ |  _|| |/ _` |',
\ '   |_|  |_||_|\___|  \_,_||_| \__||_||_|_|_|\__,_| \__|\___|  \_/ |_||_|_|_| \__|\___/|_||_||_|  |_|\__, |',
\ '                                                                                                     |___/',
\ ]


"***************************
"   KEY MAPPINGS
"***************************
" Executing Programs
map <F1> :q <CR>
map <F4> :below terminal python3 %<CR>

map <F3> :below terminal zsh<CR>
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" Save session
noremap <C-s> :SaveSession<CR>

" Vimspector settings - uses F5 to F11 and Alt 8
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Open fuzzy file search
nmap <Leader>o :Files<CR>

" Change size of current split
nmap <Leader>b 10<C-W>+<CR>
nmap <Leader>s 10<C-W>-<CR>

" Generate table of contents
noremap <leader>c :GenTocGFM<CR>

" Show help file
noremap <leader>h :sp $HOME/setupReadme.md<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Go to new and previous tabs with tap
nnoremap <Tab> gt
nnoremap <S-Tab> gT

"****************************
"	ON VIM STARTUP
"****************************

" Load NERDTree
autocmd VimEnter *.* NERDTreeToggle .

