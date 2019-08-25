set number
"set expandtab
set nocompatible
set showcmd
set shiftwidth=4
set tabstop=4
set incsearch
set clipboard=unnamed
set foldmethod=syntax
set mouse=a
au BufWinLeave * silent mkview  " 保存文件的折叠状态
au BufRead * silent loadview    " 恢复文件的折叠状态

:color koehler
syntax on


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'zxqfl/tabnine-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'mattn/emmet-vim'

 
call vundle#end()
filetype plugin indent on


" map
" --------------------------------------------------------
" editing map
let mapleader=","
inoremap <leader><leader> <esc>
cnoremap <C-g> <esc>
nnoremap <C-a> ^
nnoremap <C-e> $
inoremap <C-e> <esc>$a
nnoremap ev :vs $MYVIMRC<cr>
nnoremap sv :source $MYVIMRC<cr>
nnoremap gn :bn!<cr>
nnoremap gp :bp!<cr>
nnoremap gd :bd!<cr>
nnoremap zz :wq!<cr>
nnoremap <F9> :set autoindent!<cr> :echom "Autoindent-mode:"&autoindent<cr>

" --------------------------------------------------------
" tab
nnoremap <C-t> :tabnew<cr>
" originally <c-K> open map.txt
nnoremap J gT 
nnoremap K gt
" --------------------------------------------------------
" window
nnoremap j= :resize +5<cr>
nnoremap j- :resize -5<cr>
nnoremap h= :vertical resize +5<cr>
nnoremap h- :vertical resize -5<cr>

" --------------------------------------------------------
" buffer
nnoremap <space>b :ls<cr>

" --------------------------------------------------------
"Use space to switch fold status
nnoremap <space> za

"Map swtich comment
nmap <C-_> <Leader>c<Space>

" ctrl+N open/close NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

