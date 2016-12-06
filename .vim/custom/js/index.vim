" Javascript-specific keybindings and functions
" Autocommands -- {{{
augroup js_util
  autocmd!

  " Folds -- {{{
  syntax region foldBraces   start="{" end="}" transparent fold keepend extend
  syntax region foldBrackets start="\[" end="\]" transparent fold keepend extend
  setlocal foldmethod=syntax
  setlocal foldlevelstart=1
  setlocal foldlevel=99
  " }}}

  " Abbreviations -- {{{
  " Easier function declarations
  inoremap <buffer> fn{<space> function<space>()<space>{<space><space>}<left><left>
  inoremap <buffer> fn{<cr> function<space>()<space>{<cr>}<esc>kA<cr>

  " inoremap ( ()<esc>i
  " inoremap " ""<esc>i
  " }}}
augroup end
" }}}
