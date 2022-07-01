# Vim IDE

[easy-config.vim](https://github.com/yulonghu/vim-easy-config/blob/master/README.md) | Vim IDE


| 插件名称 | 简介 | GitHub | Vim Version |
| --- | --- | --- | --- |
| NERDTree | 目录管理 | https://github.com/preservim/nerdtree | vim >= 7.3 |
| Tagbar | 显示文件的类、函数、变量 | https://github.com/majutsushi/tagbar | vim >= 7.3 |
| YouCompleteMe | 支持多种语言，代码自动补全 (缺点安装特别慢) | https://github.com/ycm-core/YouCompleteMe | vim >= 8.0 |
| ALE | 支持多种语言, 语法检测工具 | https://github.com/dense-analysis/ale | vim >= 8.0 |
| phpcomplete | PHP语言 代码自动补全 | https://github.com/shawncplus/phpcomplete.vim | vim >= 7.3 |
| vim-go | Go语言 开发插件 | https://github.com/fatih/vim-go | vim >= 8.0 |

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

需要先安装 ctags `yum install ctags`

```bash
nmap <F8> :TagbarToggle<CR>
```

### YCM

安装所有语言的支持。包括有 C-family、C#、Python、Go、JavaScript and TypeScript、Rust、Java等

缺点: 安全过程特别慢

```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

选择型安装 Go，Javascript 语言的支持

```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --go-completer
python3 install.py --ts-completer
```

### phpcomplete

PHP 语言代码自动补全: phpcomplete、phpcd

```bash
set completeopt=longest,menu " 禁止在编辑器上方显示 help
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
```
### vim-go

vim-go 是 Vim 的 Go 语言开发插件。支持代码高亮、语法检查、代码提示、自动格式化代码等功能

```bash
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Enable GoInfo
autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1
set updatetime=100

" enable goimports
let g:go_imports_autosave = 1

" goimports 是 gofmt 的替代品
" 每当您保存文件时，goimports 都会自动格式化并重写您的导入声明
let g:go_fmt_command = "goimports"

" enable go 代码折叠
let g:go_fmt_experimental = 1

" enable highlight
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "5s"

" Golang Debug
nmap <F2> :GoTest<CR>
nmap <F3> :GoRun<CR>
nmap <F4> :GoDebugStart<CR>

let g:go_highlight_debug = 1
let g:go_debug_breakpoint_sign_text = '>'
```

