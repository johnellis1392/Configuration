
" ##########
" Custom Shortcuts
nmap <silent> <f3> :NERDTreeToggle<cr>
nmap <silent> <f2> <c-w>w
nmap <silent> <Enter> o<Esc>

nnoremap <silent> <C-h> <c-w><c-h>
nnoremap <silent> <C-j> <c-w><c-j>
nnoremap <silent> <C-k> <c-w><c-k>
nnoremap <silent> <C-l> <c-w><c-l>

" Turn on syntax folding and Map space to fold codeblock
set foldmethod=syntax
nnoremap <silent> <space> za

" Add mappings to make it easier to make it easier to edit
" (not my words)
let mapleader="\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" inoremap {<cr> {<cr><cr>}<esc>kA<tab>

" Map jk to escape to normal mode
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>

