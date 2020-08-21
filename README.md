# easy-config.vim

* 如果您是 Vim 新手，请毫不犹豫地安装它吧，它将是您的 Vim 起点。
* 如果您正在到处寻找一个通用性强、实战性强的 Vim 配置。
* 如果你想让 vimrc 基础配置变得超级简单。

## 三种安装方式

#### 1、手动安装

```bash
$ mkdir -p ~/.vim/plugin
$ cd ~/.vim/plugin
$ git clone https://github.com/yulonghu/vim-easy-config.git
```

#### 2、vim-plug

安装 vim-plug 插件管理器

```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ 
             https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Example**

```bash
call plug#begin('~/.vim/plugged')
Plug 'yulonghu/vim-easy-config'
call plug#end()
```

保存 `~/.vimrc` or `:source ~/.vimrc` ，运行命令 `:PlugInstall` 完成安装。

#### 3、vim-vundle

安装 vundle 插件管理器

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

**Example**

```bash
call vundle#begin()
Plugin 'yulonghu/vim-easy-config'
call vundle#end()
```
保存 `~/.vimrc` or `:source ~/.vimrc` ，运行命令 `:PluginInstall` 完成安装。

## 配色方案

自带了 3 种经典 Vim 配色方案，需要在 `~/.vimrc` 里设置

| .vimrc Set | GitHub
| --- | --- | 
| colorscheme=gruvbox  | https://github.com/morhetz/gruvbox  |
| colorscheme=molokai  | https://github.com/fcevado/molokai_dark  |
| colorscheme=wombat256mod  | https://github.com/vim-scripts/wombat256.vim  |

## Contributors

*Thank you!*
