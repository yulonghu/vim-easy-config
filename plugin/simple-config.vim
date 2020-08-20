" ------------------------------
" @author fanjiapeng@360.cn
" @uptime 2016-08-15
" ------------------------------

" 设置代码高亮
syntax on

" 载入文件类型插件
" 为特定文件类型载入相关缩进文件
filetype plugin indent on

" 自动行号
set number

" 保留历史记录50条
set history=50

" 搜索忽略大小写
set ignorecase

" 自动TAB,一个tab就真正成为4个空格了，而不仅仅是4个空格的缩进距离
set expandtab

" 自动缩进、自动对齐、tab为4
" 第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4

" Softtabstop表示在编辑模式的时候按退格键的时候退回缩进的长度,当使用expandtab时特别有用。
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
