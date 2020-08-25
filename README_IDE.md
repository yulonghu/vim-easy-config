# Vim IDE

[easy-config.vim](https://github.com/yulonghu/vim-easy-config/blob/master/README.md) | Vim IDE


| 插件名称 | 插件路径 | 简介 | GitHub |
| --- | --- | --- | --- |
| NERDTree | preservim/nerdtree | 目录管理 | https://github.com/preservim/nerdtree |
| Tagbar | majutsushi/tagbar | 显示文件的类、函数、变量 | https://github.com/majutsushi/tagbar |

## 推荐插件大全

**插件**安装之后，需要自行定义 ~/.vimrc 配置，配置拿来即用 So Easy。

**插件管理器**的安装，**插件**的安装在这里 [easy-config.vim](https://github.com/yulonghu/vim-easy-config/blob/master/README.md) 介绍过了。

### NERDTree

```bash
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <F7> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.svn$','\.bak$']
let NERDTreeWinSize = 40
let NERDTreeCaseSensitiveSort=1
let NERDChristmasTree=1
let NERDTreeDirArrows=1
```

### Tagbar

```bash
nmap <F8> :TagbarToggle<CR>
```
