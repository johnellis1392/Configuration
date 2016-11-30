" Custom Shortcuts

" Window -- {{{
nmap <silent> <f3> :NERDTreeToggle<cr>
nmap <silent> <f2> <c-w>w
nmap <silent> <Enter> o<Esc>

nnoremap <silent> <C-h> <c-w><c-h>
nnoremap <silent> <C-j> <c-w><c-j>
nnoremap <silent> <C-k> <c-w><c-k>
nnoremap <silent> <C-l> <c-w><c-l>

" Easier close window operation
nnoremap <silent> <c-c> :bd<cr>
" }}}

" Folding -- {{{
" Turn on syntax folding and Map space to fold codeblock
" set foldmethod=syntax
nnoremap <silent> <space> za
" }}}

" Vimrc Sourcing -- {{{
" Add mappings to make it easier to make it easier to edit
" (not my words)
let mapleader="\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Mode Maps -- {{{

" Insert Mode -- {{{
" Map jk to escape to normal mode
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>
inoremap <c-m> <nop>
" }}}

" Visual Mode -- {{{
vnoremap <silent> <c-j> <esc>
" }}}

" O-Maps -- {{{

" onoremap is used for operator-pending mappings.
" operator pending mappings are maps for commands
" that require associated motion commands, such as
" d, y, and c.

" }}}

" }}}
