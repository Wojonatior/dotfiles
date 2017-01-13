:set nocompatible              " be iMproved, required

"Custom Leader
let mapleader="," "leader is a comma

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/bundle')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim',{'do': './install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer' }
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"set history=200

""Colors
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set background=dark
  "syntax enable
  colorscheme CustomSolarized

"Spaces And Tabs
  set expandtab "Tabs are spaces
  set softtabstop=2
  set shiftwidth=2

"UI Config
  set number "show line numbers
  set showcmd "show last command
  set cursorline "highlights current line
  filetype indent on "loads indentation based on language
  set wildmenu "visual autocomplete
  set lazyredraw "minimizes the number of redraws
  set showmatch "shows matching paren
  set autoindent "always auto-indent
  set wrap "wrap lines
  set guifont=Meslo\ for\ Powerline
  set ambiwidth=double "allows for double-width characters

  "Change where splits open
    set splitbelow 
    set splitright
  
  "Airline Config
    let g:airline_powerline_fonts = 1 "adds powerline chars to dict
    let g:airline_solarized_normal_green = 1
    let g:airline_theme='solarized'
    let g:solarized_visibility = "high"
    let g:solarized_contrast = "high"

"Searching
  set incsearch "searches as each characer is entered
  set hlsearch "highlights matches
  "turns off search highlights
  nnoremap <leader><space> :nohlsearch<CR>
 
  "CtrlP Settings
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'

  "ag support
  if executable('ag')
    "use ag over grep
    set grepprg=ag\ --nogroup

    "use ag in ctrlp
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    "disable ctrlp cavhing when ag is in use
    let g:ctrlp_use_caching = 0
  endif

  "ags configuration
    let g:ags_agexe = 'ag'
    let g:ags_agcontext = 3
    let g:ags_enable_async = 1
    let g:ags_agmaxcount = 2000

"Folding
  set foldenable "enables folding
  set foldlevelstart=10 "opens most folded code
  set foldnestmax=10 "max num of nested folds
  "Space toggles folds 
  nnoremap <space> za 
  set foldmethod=indent "folding is based on indents

"Custom Movements

"Custom Commands
  ":ev will open my vimrc for editing
  :nnoremap <leader>ev :vsplit $MYVIMRC<CR>
  ":sv will reload my evaluate my vimrc immediatly
  :nnoremap <leader>sv :source $MYVIMRC<CR>
  :nnoremap <leader>nt :NERDTreeToggle<CR>
  "jk is escape
  "inoremap jk <esc> 
  "Split movement rebinds
    nnoremap <C-J> <C-W>j
    nnoremap <C-K> <C-W>k
    nnoremap <C-L> <C-W>l
    nnoremap <C-H> <C-W>h

  map Y y$ " Capital Y now acts like D and C, where it yanks until end of line
  map <CR> o<esc> " Enter in command mode will enter a new line and stay in command mode

"Launch Config
"Tmux Config
"Autogroups

"Backups
"Stores backup files in /tmp
  set noswapfile
"Custom Functions
"Organization
