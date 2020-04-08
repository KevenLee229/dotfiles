set number
"set expandtab
set showcmd
set shiftwidth=4
set tabstop=4
set incsearch
set clipboard=unnamed
set foldmethod=syntax
set mouse=a
"au BufWinLeave * silent mkview  " 保存文件的折叠状态
"au BufRead * silent loadview    " 恢复文件的折叠状态
au BufRead * normal zR

:color koehler
syntax on

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
"set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
"
"if dein#load_state('~/.cache/dein')
"  call dein#begin('~/.cache/dein')
"
"  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
"  call dein#add('Shougo/deoplete.nvim')
"  call dein#add('VundleVim/Vundle.vim')
"  call dein#add('bling/vim-airline')
"  call dein#add('tpope/vim-surround')
"  call dein#add('scrooloose/nerdtree')
"  call dein#add('Xuyuanp/nerdtree-git-plugin')
"  call dein#add('scrooloose/nerdcommenter')
"  call dein#add('tmhedberg/SimpylFold')
"  if !has('nvim')
"    call dein#add('roxma/nvim-yarp')
"    call dein#add('roxma/vim-hug-neovim-rpc')
"  endif
"
"  call dein#end()
"  call dein#save_state()
"endif
"" :call dein#install()

filetype plugin indent on
syntax enable

" map
" --------------------------------------------------------
" editing map
let mapleader=","
inoremap jk <esc>
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
nnoremap qq :q!<cr>
nnoremap ww :w!<cr>
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

