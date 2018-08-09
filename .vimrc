filetype plugin indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4

set nu
set cursorline
set cursorcolumn
hi CursorLine  cterm=bold   ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
colorscheme peachpuff
set completeopt=preview,menu
"新建标签
map <M-F2> :tabnew<CR>
"列出当前目录文件
map <F3> :tabnew .<CR>
"打开树状文件目录
map <C-F3> \be

"默认打开Taglist
"
let Tlist_Auto_Open=1
"
"""""""""""""""""""""""""""""""

" Tag list (ctags)

""""""""""""""""""""""""""""""""

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的

let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim

let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

" minibufexpl插件的一般设置

let g:miniBufExplMapWindowNavVim = 1

let g:miniBufExplMapWindowNavArrows = 1

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

 let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set completeopt=longest,menu
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

set omnifunc=phpcomplete#CompletePHP

" GOGOGO
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
