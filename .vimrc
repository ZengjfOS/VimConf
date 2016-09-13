" 
"   主要用于保留一些常用的vim配置，省得每次都另外写，效率太低。
"
"                           2015-09-18 深圳 南山平山村 曾剑锋
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bufexplorer.zip'
Plugin 'wesleyche/SrcExpl'
Plugin 'winmanager'
Plugin 'scrooloose/syntastic'
Plugin 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'plasticboy/vim-markdown'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" base settings

"
set autoindent
set cindent
" display line number
set nu!
" 启动 vim 时关闭折叠代码
set nofoldenable
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案

filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 定义快捷键到行首和行尾
" nmap lb 0
" nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
"set nocompatible
set backspace=indent,eol,start
" vim 自身命令行模式智能补全
set wildmenu

"set U-Boot ctags tags
"set tags+=/home/zengjf/myandroid/bootable/bootloader/uboot-imx/tags

"set Linux kernel ctags tags
set tags+=/home/zengjf/software/uboot-imx/tags

"set buffer explorer shortcut
nmap <F8> :BufExplorer<cr>
nmap <c-]> g<c-]>

"设置 taglist
let Tlist_Show_One_File=1       "只显示当前文件的tags
"let Tlist_WinWidth=40          "设置taglist宽度
let Tlist_Exit_OnlyWindow=1     "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1    "在Vim窗口左侧显示taglist窗口 
let Tlist_Show_Menu=1           "显示taglist菜单
"let Tlist_Auto_Open=1          "启动vim自动打开taglist
nmap <Leader>tl :Tlist<cr><c-w>l

"设置 winManager
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer"
"let g:winManagerWidth = 30
nmap <Leader>wm :WMToggle<cr><c-w>h
"在进入vim时自动打开winmanager
"let g:AutoOpenWinManager = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("/home/zengjf/kernel/cscope.out")
        cs add /home/zengjf/kernel/cscope.out
    endif
    set csverb
    set cscopetag
endif

""""""""""""""""""""""""""""""
" ycm setting
""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_invoke_completion = '<C-/>'
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

nmap <c-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <c-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <c-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <c-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <c-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <c-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <c-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <c-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
