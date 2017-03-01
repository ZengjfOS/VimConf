# VimConf

目前，个人编辑所有的文本，基本上都是在Vim中进行编辑的，当然有些编辑器可能不是Vim，但一般来说，也是要有Vim插件的编辑器，总是会下意识去按ESC键。

## [Vundle](https://github.com/VundleVim/Vundle.vim)

获取Vundle：`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## 配置

这里本人主要是采用[Vundle](https://github.com/VundleVim/Vundle.vim)进行插件管理，这个工具很实用，主要配置如下:

```
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

```

