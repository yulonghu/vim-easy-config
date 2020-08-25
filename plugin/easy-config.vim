" ------------------------------
" @Author fanjiapeng@126.com
" @Uptime 2020-08-21
" ------------------------------

" 载入文件类型插件
" 为特定文件类型载入相关缩进文件
if has('autocmd')
  filetype plugin indent on
endif

" 设置代码高亮
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" 配置多语言环境 & 推荐设置 utf-8 编码
if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk,cp936

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif

    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" 自动行号
set number

" 保留历史记录100条
if &history < 100
    set history=100
endif

" 保留最大的tab数量
if &tabpagemax < 50
    set tabpagemax=50
endif

" 搜索忽略大小写
set ignorecase

" 自动TAB, 一个tab就真正成为4个空格了, 而不仅仅是4个空格的缩进距离
set expandtab

" 自动缩进、自动对齐、tab为4
" 第一行设置tab键为4个空格, 第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4

" Softtabstop表示在编辑模式的时候按退格键的时候退回缩进的长度, 当使用expandtab时特别有用
set softtabstop=4

" 设置自动缩进
set ai

" (cindent是特别针对 C语言语法自动缩进)
set cindent

" 配置SQL语法高亮 select * from admin where id=1
let php_sql_query=1

" 总是显示状态行
set laststatus=2

" 我的状态行显示的内容(包括文件类型和解码)
set statusline=[%n]%F[%{strlen(&ft)?&ft:'none'},%{&fileencoding},%{&fileformat}]%=[%b\ 0x%B]\ %l\ of\ %L,%c\ %P

" 命令行补全
set wildmenu

" 中文帮助
if version > 603
    set helplang=cn
end

" 平时光标不闪, 而在插入模式时闪动
set guicursor+=n-v-c:blinkon0

" 保存文件格式
set fileformats=unix,dos,mac

" 启用代码标记折叠, 2个zf快速按键
set fdm=marker

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间(单位是十分之一秒)
set matchtime=1

" 置粘贴模式, 这样粘贴过来的程序代码就不会错位了, 如果开启, 这自动缩进功能没了
"set paste
set nopaste

" 视图模式选中自动复制
vmap <C-c> "+y

" 模式行关闭
set nomodeline

" 支持鼠标操作
set mouse=a

" 关闭VI兼容模式, 避免历史版本的一些BUG和局限型问题
set nocompatible

" 启用backspace
set backspace=indent,eol,start

" 取消备份
set nobackup
set nowritebackup

" 不产生.swp文件，建议关闭
set noswapfile

" 配置主题整体的色调
if !&background
    set background=dark
endif

" 开启256色支持, 默认8色
set t_Co=256

" 选择配色
colorscheme wombat256mod

" 文件被修改时, 自动载入
set autoread

" 避免折行后某一行不见
set display=lastline

" vim:set ts=4 sw=4 noet:
