"default colorscheme
colorscheme darkblue
set guifont=Consolas:h10
syntax on

" tabs
set smartindent
set expandtab
set ts=4 sw=4

" No backups, please...
set nobackup
set noswapfile

" More history please...
set history=10000
set undolevels=1000

" Ignore editing non-sense files
set wildignore=*.swp,*.bak,*.pyc,*.class

" Bells & whistles
set visualbell
set noerrorbells

"""" Make my life easier
" use backspac for more things
set backspace=indent,eol,start
set smartcase
set hlsearch
set incsearch

" Remap ; to : in command mode
nnoremap ; :
"nnoremap : ;
vnoremap ; :
vnoremap : ;
" add exception for q: (now q; should be accepted)
map q; q: 

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Show Line Numbers
set number


""" Win32 specific settings {
  if has("win32")
    let g:skip_loading_mswin=1 " disable the horrible default vim windows settings
    colorscheme solarized

    "set bkc=yes     "avoid breaking symlinks on windows.
                    "not sure why auto doesn't work

      "----------------- Plugin Specific Settings -------------------
      "let g:visual_studio_python_exe = 'C:\Python26\python.exe'

    " Share Clipboard with windows
    set clipboard+=unnamed
  endif               
""" } Win32 specific settings
