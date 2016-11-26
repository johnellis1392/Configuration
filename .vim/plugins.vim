
" ##########
" Setup Plugins
set nocompatible
filetype off


" ##########
" Setup Vundle
" Note: Use :PluginInstall to install plugins, 
"       and :PluginUpdate to update existing plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SWIFT-ATE-Syntax'
Plugin 'Buffergator' " Note: Use \b to open buffergator window

" Note: Look into 'syntastic' for syntax correction

call vundle#end()
" ##########


" ##########
" Setup NeoBundle
" Note: Use NeoBundleInstall to install plugins, and
"       NeoBundleUpdate to update existing plugins
"
" For more information, go to:
" https://github.com/Shougo/neobundle.vim
set rtp+=~/.vim/bundle/neobundle.vim
call neobundle#begin()

NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'syntastic'
NeoBundle 'fugitive.vim'

call neobundle#end()
" ##########


" Done setting up plugins: turn on filetype setting again
filetype plugin indent on
" ##########



