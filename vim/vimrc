augroup encrypted
    au!
    autocmd BufReadPre,FileReadPre      *.gpg set viminfo=
    autocmd BufReadPre,FileReadPre      *.gpg set noswapfile
    autocmd BufReadPre,FileReadPre      *.gpg set bin
    autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
    autocmd BufReadPost,FileReadPost    *.gpg '[,']!gpg --decrypt 2> /dev/null
    autocmd BufReadPost,FileReadPost    *.gpg set nobin
    autocmd BufReadPost,FileReadPost    *.gpg let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost    *.gpg execute ":doautocmd BufReadPost " . expand("%:r")
    autocmd BufWritePre,FileWritePre    *.gpg   '[,']!gpg --default-recipient-self -ae 2>/dev/null
    autocmd BufWritePost,FileWritePost    *.gpg   u
augroup END

augroup CPT
  au!
  au BufReadPre		 	*.cpt       set bin
  au BufReadPre,BufNewFile 	*.cpt       set viminfo=
  au BufReadPre,BufNewFile 	*.cpt       set noswapfile
  au BufReadPost,BufNewFile 	*.cpt      let $vimpass = inputsecret("Password: ")
  au BufReadPost 		*.cpt      silent '[,']!ccrypt -cb -E vimpass
  au BufReadPost	 	*.cpt      set nobin

  au BufWritePre *.cpt      set bin
  au BufWritePre *.cpt      '[,']!ccrypt -e -E vimpass
  au BufWritePost *.cpt     u
  au BufWritePost *.cpt     set nobin
augroup END

map T a<C-R>=strftime("%c")<CR><Esc>
syntax enable
colorscheme evening
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch            " Highlight search results
set nocompatible
filetype on
filetype indent on
filetype plugin on

autocmd BufReadPre *.doc set ro "Word documents can be read using antiword
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"


map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR> " Easy switch between .h and .cpp files - only works in same dir

set expandtab  "inserts space characters whenever the tab key is pressed
set tabstop=4  " number of space characters inserted when tab key is pressed
set shiftwidth=4 "number of space characters inserted for indentation

