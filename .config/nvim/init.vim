:set nocompatible              " be iMproved, required
let $XDG_DATA_HOME="~/.config/nvim/autoload"
let mapleader=","

let g:python_host_prog = '/Users/wojo/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/wojo/.pyenv/versions/neovim3/bin/python'

if empty(glob("~/.config/nvim/autoload/plug.vim"))
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/bundle/')
" Looking Pretty
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'editorconfig/editorconfig-vim'
" Syntax
Plug 'tpope/vim-eunuch'
Plug 'rhysd/vim-crystal'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
" Editor Behavior/Extensions
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'janko-m/vim-test'
" Files/Searching
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim',{'do': './install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer' }
Plug 'mileszs/ack.vim'
" Completion
Plug 'quramy/tsuquyomi'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

call plug#end()

"Colors
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set background=light
  syntax enable
  colorscheme PaperColor
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"

"Spaces And Tabs
  set expandtab "Tabs are spaces
  set softtabstop=2
  set shiftwidth=2

"UI Config
  set encoding=utf8
  set number
  set cursorline
  set lazyredraw
  set autoindent
  set nowrap
  set splitbelow 
  set splitright
  set guifont=Knack\ Regular\ Nerd\ Font\ Complete
  set showmatch "shows matching paren
  filetype indent on "loads indentation based on language
  set showcmd "show last command
  set mouse=a "Allows for mouse scrolling to work correctly


  "Change the type of split that opens for vimtest
    let g:test#strategy = "neovim"
    let g:test#preserve_screen = 1

  
  "Airline Config
    let g:airline_powerline_fonts = 1 "adds powerline chars to dict
    let g:airline#extensions#whitespace#mixed_indent_algo = 1
    let g:airline_solarized_normal_green = 1
    let g:airline_theme='papercolor'

  "Syntastic Config
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_javascript_checkers=['eslint']
    let g:syntastic_ruby_checkers = ['rubocop']


    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 2
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_warning_symbol = "🙆"
    let g:syntastic_style_warning_symbol = "🙆"
    let g:syntastic_error_symbol = "🙅"
    let g:syntastic_style_error_symbol = "🙅"
    highlight SyntasticErrorSign guifg=#073642 guibg=#073642
    highlight SyntasticWarningSign guifg=#073642 guibg=#073642

  "Deoplete Config
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    let g:deoplete#enable_at_startup = 1
    let g:tern_request_timeout = 1
    let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
    let g:tern#filetypes = [
                    \ 'jsx',
                    \ 'javascript.jsx',
                    \ ]

    if !exists('g:deoplete#omni#input_patterns')
      let g:deoplete#omni#input_patterns = {}
    endif

    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"Folding
  set foldenable 
  set foldlevelstart=10 
  set foldnestmax=10 
  nnoremap <space> za 
  set foldmethod=indent 

"Searching
  set incsearch
  set hlsearch
  nnoremap (<leader><space>) :nohlsearch<CR>
 
  "CtrlP Settings
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'

  "ag support
  if executable('ag')
    set grepprg=ag\ --nogroup
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
    let g:ackprg =  'ag --vimgrep'
  endif

  nnoremap <Leader>a :Ack!<Space>

  "ags configuration
    let g:ags_agexe = 'ag'
    let g:ags_agcontext = 3
    let g:ags_enable_async = 1
    let g:ags_agmaxcount = 2000

"Custom Commands
  :nnoremap <leader>s :split<CR> :save %:p:h/
  :nnoremap <leader>ev :tabe $MYVIMRC<CR>
  :nnoremap <leader>sv :source $MYVIMRC<CR>
  :nnoremap <leader>nt :NERDTreeToggle<CR>
  "Vim test commands
  nmap <silent> <leader>t :TestNearest<CR>
  nmap <silent> <leader>T :TestFile<CR>
  nmap <silent> <leader>l :TestLast<CR>
  "Split movement rebinds
    nnoremap <C-J> <C-W>j
    nnoremap <C-K> <C-W>k
    nnoremap <C-L> <C-W>l
    nnoremap <C-H> <C-W>h

  map Y y$ 
  tnoremap <Esc> <C-\><C-n>

"Other Config
  set noswapfile
  autocmd filetype crontab setlocal nobackup nowritebackup
