function! GetRunningOS()
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname')=~'Darwin'
      return "mac"
    else
      return "unix"
    endif
  endif
endfunction

let os=GetRunningOS()

set nocompatible        " use VIM rather than VI defaults

set clipboard=unnamedplus   " use the system clipboard for yanks and pastes
set guioptions+=a   " use system paste buffer
set showmatch       " show matching brackets
set incsearch
set hlsearch



set expandtab
set tabstop=2
set shiftwidth=2
set smarttab            " use shiftwidth for beginning of line tabs
set autoindent

filetype on
filetype plugin on
filetype indent on


" swapfile directories
if os=="win"
  set dir=C:\temp 
else
  set dir=/tmp 
endif

set history=100      " keep more history items
set spell
set ignorecase
set smartcase
set wildmode=longest,list,full " show full directory contents on 'e' 

" set incsearch
" set hlsearch

" set mouse+=r        " allow mouse for "his enter" screens
" set mousefocus      " focus the window that the mouse is pointing at
set guioptions-=m   " no menus
"set guioptions-=T   " no toolbar

set nojoinspaces    " don't use two spaces after a '.' when joining lines

set nowrap          " don't display long lines as wrapped
" set sidescroll=5
" set listchars+=precedes:<,extends:>
" set laststatus=2    " always show a status line

"set tags=./tags,tags
" set tags=tags;/
" set autoread        " automatically reread files that have changed
" set shellslash      " use forward slashes instead of a backslash for filenames
" set shell=bash

nmap <F12> :close
map <F5> :ls<CR>

" auto-switch to dirctory of file in current buffer
autocmd BufEnter * silent! lcd %:p:h

set background=dark
syntax enable
colorscheme desert

