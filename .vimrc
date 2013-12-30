"---[ Vundler ]---"
set nocompatible               " be iMproved
filetype off                   " required!

call vundle#rc()

"---[ Environment ]---"

Bundle 'L9'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'tpope/vim-fugitive'
Bundle 'vcscommand.vim'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'NERD_Tree-and-ack'
Bundle 'tpope/vim-surround'
Bundle 'ctrlp.vim'
"Bundle 'FuzzyFinder'
Bundle 'ack.vim'
"Bundle 'troydm/easytree.vim'
Bundle 'matchit.zip'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'bling/vim-airline'
Bundle 'itchyny/lightline.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'colorizer'
Bundle 'scrooloose/syntastic'
Bundle 'Gundo'
"Bundle 'Conque-Shell'
Bundle 'fontzoom.vim'
"Bundle 'SyntaxComplete'
Bundle 'reload.vim'
Bundle 'moll/vim-bbye'
"Bundle "myusuf3/numbers.vim"
"Bundle 'terryma/vim-smooth-scroll'
Bundle 'joeytwiddle/sexy_scroller.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'airblade/vim-gitgutter'


"---[ Filetypes ]---"

Bundle 'jelera/vim-javascript-syntax'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'wookiehangover/jshint.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
"Bundle 'vim-json-bundle'
Bundle 'elzr/vim-json'
Bundle 'gkz/vim-ls.git'
"Bundle 'tpope/vim-rails.git'
Bundle 'vim-coffee-script'
Bundle 'vim-stylus'
Bundle 'less.vim'
Bundle 'jade.vim'

"Bundle 'mhinz/vim-startify'

"Bundle 'coffee.vim'
" Bundle 'tpope/vim-haml'
" Bundle 'skammer/vim-css-color'
" Bundle 'javaScriptLint.vim'
" Bundle 'jsbeautify'
" Bundle 'pangloss/vim-javascript'

"---[ Colors ]---"

Bundle 'flazz/vim-colorschemes'
Bundle 'Gummybears'
Bundle 'Solarized'
Bundle 'Zenburn'

"---[ UI ]---"

language C

"set gfn=Terminus\ (TTF)\ for\ Powerline\ 12
set gfn=Anka/Coder\ Narrow\ 12
set antialias=on
"set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline\ 10 
set ghr=0   " stolen pixels
set ttyfast
set t_Co=256
set nonumber
set norelativenumber
"set currentnumber=0
"set numberwidth
set mouse=
set fillchars=""
set showtabline=1
set guioptions=agitc
set guicursor=n:blinkon0
set splitbelow
set wildmenu
set showcmd
set vb
"set guioptions-=e
"set guioptions-=m
"set guioptions-=T
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b
set noerrorbells
set novisualbell
set t_vb=
"set background=light
syntax on
colorscheme tao
set bg=light
set laststatus=2

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"---[ Search ]---"

set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch

"---[ Environment ]---"

set nocompatible
set hidden
set history=1024
set directory=~/.vim/tmp
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamedplus
set undofile
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000
filetype on
filetype plugin on
filetype indent on
set foldmethod=indent
set foldlevel=0

"---[ Editing ]---"

set lsp=0
set backspace=2
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set scroll=0
set scrolloff=10
set autoindent
set fileformats=unix,dos,mac
"set cindent
"set smartindent

"---[ Keyboard Layout ]---"

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
nnoremap <C-к> :redo<CR>
nnoremap г :undo<CR>
inoremap <A-ц> <A-w>
nnoremap <C-в> <C-d>
nnoremap <C-г> <C-u>
nnoremap . /


"set termencoding=latin1
set keymap=russian-jcukenwin    " переключение раскладок клавиатуры по C-^
set iminsert=0                  " раскладка по умолчанию для ввода - английская
set imsearch=0                  " раскладка по умолчанию для поиска - английская

"cmap <silent> <C-F> <C-^>
"imap <silent> <C-F> <C-^>X<Esc>:call MyKeyMapHighlight()<CR>a<C-H>
"nmap <silent> <C-F> a<C-^><Esc>:call MyKeyMapHighlight()<CR>
"vmap <silent> <C-F> <Esc>a<C-^><Esc>:call MyKeyMapHighlight()<CR>gv

function MyKeyMapHighlight()
    if &iminsert == 0
       "hi StatusLine ctermfg=LightGray guifg=DarkGray
    else
       "hi StatusLine ctermfg=DarkGray guifg=LightGray
    endif
endfunction

call MyKeyMapHighlight()
au WinEnter * :call MyKeyMapHighlight()

"---[ Перемещения по тексту ]---"

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap K <nop>
nnoremap <C-l> zl
nnoremap <C-h> zh
noremap <C-j> jzz
nnoremap <C-k> kzz
inoremap <Enter> <Esc>l
nnoremap J <Down>
nnoremap K <Up>
nnoremap H <Left>
nnoremap L <Right>

"---[ Alt insert mode moving ]---"
inoremap <A-i> <Esc>
inoremap <A-a> <Esc>l
inoremap <A-I> <Esc>I
inoremap <A-A> <Esc>A
" fix normal mode reflexes)
nnoremap <A-i> i
nnoremap <A-a> a
nnoremap <A-I> I
nnoremap <A-A> A

inoremap <A-o> <Esc>o
inoremap <A-C-O> <Esc><S-O>
inoremap <A-u> <Esc>ui
inoremap <A-r> <Esc><C-r>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"---[ Редактирование ]---"

vnoremap < <gv
vnoremap > >gv

"---[ Автодополнение ]---"

"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-TAB>  pumvisible() ? "\<C-p>" : "\<C-TAB>"
"inoremap <C-Space> <C-x><C-o>
"inoremap <C-S-Space> <C-X><C-N>
"inoremap <A-C-Space> <C-X><C-]>

"---[ Буферы и окна ]---"

nnoremap <A-C-h> :bp<CR>
nnoremap <A-C-l> :bn<CR>
nnoremap <A-S-d> :Bdelete<CR>
nnoremap <A-d> <C-W>c
nnoremap <A-j> <C-W>j
nnoremap <A-k> <C-W>k
nnoremap <A-h> <C-W>h
nnoremap <A-l> <C-W>l
nnoremap <A-+> <C-W>+
nnoremap <A--> <C-W>-
nnoremap <A-<> <C-W><
nnoremap <A->> <C-W>>
nnoremap <A-=> <C-W>=
nnoremap <A-_> <C-W>_
nnoremap <C-w>d :split<CR>:bfirst<CR><C-W>j:bwipe!<CR>
"nnoremap <C-w>d :BUN

"---[ Табы ]---"

nnoremap <A-t> :tabnew<cr>
nnoremap <A-1> :1 tabn<cr><C-l>
nnoremap <A-2> :2 tabn<cr><C-l>
nnoremap <A-3> :3 tabn<cr><C-l>
nnoremap <A-4> :4 tabn<cr><C-l>
nnoremap <A-5> :5 tabn<cr><C-l>
nnoremap <A-6> :6 tabn<cr><C-l>
nnoremap <A-7> :7 tabn<cr><C-l>
nnoremap <A-8> :8 tabn<cr><C-l>
nnoremap <A-9> :9 tabn<cr><C-l>

"---[ Разные клавиши ]---"

nnoremap <A-w> :w<CR>
inoremap <A-w> <C-o>:w<CR>
nnoremap <A-ц> :w<CR>
inoremap <A-ц> <C-o>:w<CR>
nnoremap <A-/> :noh<CR>
nnoremap <A-.> :noh<CR>
nnoremap <A-Backspace> :join<CR>
vnoremap <A-Backspace> :join<CR>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"nnoremap / /\v
"nnoremap <A-;> A;<Esc>
"inoremap <A-;> <Esc>A;<Esc>
nnoremap ; q:<Esc>
nnoremap <A-e> :e ~/.vimrc<CR>

"---[ PLUGINS ]---"

"---[ tagBar ]---"

nnoremap <A-~> :TagbarToggle<CR>
inoremap <A-~> <Esc>:TagbarToggle<CR>i

"---[ miniBuffer ]---"

let g:miniBufExplMaxSize = 3

"---[ sessions ]---"

let g:session_autoload = 0
let g:session_autosave = 'no'
set sessionoptions=buffers,curdir,folds,tabpages

"---[ NERDCommenter ]---"

nnoremap <A-c> :call NERDComment(0, "toggle")<cr>
vnoremap <A-c> :call NERDComment(0, "toggle")<cr>

"---[ CtrlP ]---"
nmap <A-o> :CtrlPCurWD<CR>
nmap <A-b> :CtrlPBuffer<CR>
nmap <C-f> :CtrlPCurWD<CR>
nmap <C-f> :CtrlPCurWD<CR>
nmap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|undo)$',
  \ 'file': '\v\.(exe|so|dll|png|gif|jpg)$',
  \ 'other': '\v^(\%\w*)'
  \ }
let g:ctrlp_working_path_mode = 'ar'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_show_hidden = 0
let g:ctrlp_open_multiple_files = 'vjr'

"---[ LiveScript ]---"

let g:ls_make_options="-bc"
function LiveScriptBuf()
  syntax sync fromstart
  setlocal foldmethod=indent
  setlocal shiftwidth=2 expandtab
  let ls_compile_vert = 1
  nmap <A-m> <Esc>:LiveScriptCompile watch vertical<cr>
  iabbrev <silent> <buffer> con console.log
  "setl scrollbind
  setlocal omnifunc=syntaxcomplete#Complete
endfunction

"au BufNewFile,BufReadPost,BufEnter *.ls call LiveScriptBuf()
autocmd FileType ls call LiveScriptBuf()

"---[ Javascript Libraries ]---------------

let g:used_javascript_libs = 'prelude,jquery,angularjs,requirejs,backbone'

"---[ Auto ]---"

"autocmd BufReadPost *
  "\ if line("'\"") > 0 && line("'\"") <= line("$") |
  "\   exe "normal g`\"" |
  "\ endif

"---[ Abbrev ]---"

iabbrev </ </<C-X><C-O>

"---[ Completion ]----

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,,javascript,d,vim,python,perl6,scala,vb,elixir,go,LiveScript,LiveScriptBuf' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'stylus,css,less' : [':', ' ']
  \ }

"if has("autocmd") && exists("+omnifunc")
"autocmd Filetype *
"\	if &omnifunc == "" |
"\		setlocal omnifunc=syntaxcomplete#Complete |
"\	endif
"endif
"
"---[ Syntastic ] ----
let g:syntastic_check_on_open=1
    "
"---[ indent guides ]---
let g:indent_guides_color_change_percent = 3

"---[ numbers ]---
"let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'nerdtree]$

"---[ NERDTree ]---"

let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinPos = 'left'
let g:NERDTreeMinimalUI = 1
"let g:NERDTreeWinSize = 50
let g:NERDTreeShowBookmarks = 1
nnoremap <A-`> :NERDTreeToggle<CR><C-L>
"nnoremap <A-`> :NERDTreeTabsToggle<CR><C-L>

"---[ SmoothScroll ]----
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>

"---[ SexyScrolling ]----
"
let g:SexyScroller_Enabled=1
let g:SexyScroller_CursorTime = 5
let g:SexyScroller_ScrollTime = 20
let g:SexyScroller_MaxTime = 500
let g:SexyScroller_EasingStyle = 1
let g:SexyScroller_DetectPendingKeys = 1 

"---[ GitGutter ]----

let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 0
let g:gitgutter_realtime = 0

"----[ LIGHTLINE ]---

source ~/.lightline.vim
