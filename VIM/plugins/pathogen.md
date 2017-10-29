# [pathogen](http://www.vim.org/scripts/script.php?script_id=2332)
http://github.com/tpope/vim-pathogen

1. 下载 pathogen.vim 到 `~/.vim/autoload/` 目录下：

```Shell
pi@raspberrypi:~$ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

```Shell
# raspbian

pi@raspberrypi:~/.vim$ ls
autoload  bundle  doc  plugin
pi@raspberrypi:~/.vim$ ls autoload/
pathogen.vim  voom  voom.vim
```

```Shell
# macOS

faner@THOMASFAN-MB0:~|⇒  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
faner@THOMASFAN-MB0:~|⇒  ls .vim
autoload bundle
```

2. 编辑 `~/.vimrc`，添加以下行：

```
"开启pathogen插件管理器
set nocp
syntax on
filetype plugin indent on

"source ~/.vim/autoload/pathogen.vim "location of my pathogen.vim
set runtimepath+=~/.vim/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
```

> [E117: Unknown function: pathogen#infect #50](https://github.com/tpope/vim-pathogen/issues/50)  
> [Vim Pathogen won't load - E117: Unknown function: pathogen#infect](https://stackoverflow.com/questions/13080490/vim-pathogen-wont-load-e117-unknown-function-pathogeninfect)  

如果之前已经在 `~/.vimrc` 中设置了 syntax on 和 filetype plugin indent on，这里可以不用重复添加。

- **安装插件**：配置好 pathogen 后，只需 git clone 插件的 github repo 到 `~/.vim/bundle` 目录即可完成插件的安装。  
- **更新插件**：只需 cd 到 `$HOME/.vim/bundle` 目录下，进入对应的插件目录，执行 `git pull origin` 即可。  
- **删除插件**：只需 cd 到 `$HOME/.vim/bundle` 目录下，将对应的插件目录删除即可。  

## 安装 VOom 插件
从  [VOoM](http://www.vim.org/scripts/script.php?script_id=2657) 插件（voom.vim）的 [GitHub mirror](https://github.com/vim-voom/VOoM) 克隆 github repo 到 `~/.vim/bundle/` 目录下：

```Shell
# raspbian

pi@raspberrypi:~$ cd .vim/bundle/
pi@raspberrypi:~/.vim/bundle$ git clone https://github.com/vim-voom/VOoM.git
Cloning into 'VOoM'...
remote: Counting objects: 107, done.
remote: Total 107 (delta 0), reused 0 (delta 0), pack-reused 107
Receiving objects: 100% (107/107), 307.45 KiB | 6.00 KiB/s, done.
Resolving deltas: 100% (55/55), done.
```

```Shell
# macOS

faner@THOMASFAN-MB0:~|⇒  cd .vim/bundle
faner@THOMASFAN-MB0:~/.vim/bundle|⇒  git clone https://github.com/vim-voom/VOoM.git
Cloning into 'VOoM'...
remote: Counting objects: 107, done.
remote: Total 107 (delta 0), reused 0 (delta 0), pack-reused 107
Receiving objects: 100% (107/107), 307.45 KiB | 10.00 KiB/s, done.
Resolving deltas: 100% (55/55), done.
Checking connectivity... done.
```

安装完插件后，一般还需执行 `:helptags ~/.vim/bundle/VOoM/doc/` 更新 help 标签库，这样即可通过 `:h voom.txt` 查看 voom 帮助。

---

使用 vim 打开 `002 - vim 初识.md` 文档，然后输入 `:Voom markdown` 即可左侧新建分屏窗口展示 markdown 文档大纲（TOC）。

![Voom_markdown](images/Voom_markdown.png)

通过上下方向键可以切换阅读指定章节，或通过 <kbd>j</kbd>、<kbd>k</kbd> 再配合 <kbd>enter</kbd> 键切换阅读指定章节。  
通过快捷键 `CTRL-W_h` 或 `CTRL-W_l` 可在左侧TOC窗格和右侧正文窗格之间切换，输入 `:q` 退出当前窗口。  

## references
[Vim下的插件管理工具pathogen简介](http://www.cnblogs.com/litifeng/p/5597565.html)  
[vim插件管理利器：pathogen](http://blog.csdn.net/zhaoyw2008/article/details/8012757)  
Vim插件管理:Pathogen安装：[参考1](http://blog.csdn.net/z460189852/article/details/51525728)，[参考2](http://blog.csdn.net/weixin_35934768/article/details/52640038)  
[使用vim-pathogen 进行插件管理](http://www.cnblogs.com/gtarcoder/p/4632325.html)  
