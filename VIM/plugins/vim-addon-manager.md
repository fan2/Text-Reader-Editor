# [vim-addon-manager](https://github.com/MarcWeber/vim-addon-manager)

[How to enable vim addon packages?](https://unix.stackexchange.com/questions/55103/how-to-enable-vim-addon-packages)  

[对vim-addon-manager的完善](http://blog.chinaunix.net/uid-27054474-id-3260112.html)  
[更好的管理Vim插件 vim-addon-manager](https://blog.syndim.org/2011/07/06/vim-addon-manager/)  

[vim addon manager 安装使用](http://blog.163.com/clevertanglei900@126/blog/static/111352259201352011129641/)  
[vim-addon-manager - 有效的管理你的vim插件](http://www.cnblogs.com/lexus/archive/2012/11/02/2751073.html)  

## [VOoM](http://www.vim.org/scripts/script.php?script_id=2657)

VOoM (Vim Outliner of Markups) is a plugin for Vim that emulates a two-pane text outlineer.

[vim-voom (5.2-1)](https://packages.debian.org/sid/vim-voom) for debian

在 raspbian 上执行 `sudo apt-get install vim-voom` 默认自动安装了 

- vim-addon-manager：manager of addons for the Vim editor  
- vim-nox  
- vim-voom  

运行 `vim-addon-manager` 或 **`vim-addons`** 命令可查看 vim 插件状态：

```Shell
pi@raspberrypi:~$ vim-addon-manager
# Name                     User Status  System Status 
editexisting                removed       removed       
jinja                       removed       removed       
justify                     removed       removed       
matchit                     removed       removed       
voom                        removed       removed       
```

> 关于 **vim-addons** 命令的详细用法，可以通过 `man vim-addon-manager`  或 `man vim-addons` 查看帮助文档。

运行 `vim-addons install` 安装 voom 和 matchit 插件：

```Shell
pi@raspberrypi:~$ vim-addons install voom
Info: installing removed addon 'voom' to /home/pi/.vim
Info: Rebuilding tags since documentation has been modified ...
Processing /home/pi/.vim/doc/
Info: done.

pi@raspberrypi:~$ vim-addons install matchit
Info: installing removed addon 'matchit' to /home/pi/.vim
```

再运行 `vim-addon-manager` 或 **`vim-addons`**（`vim-addons status`）命令，可以发现 voom 插件已经 installed：

```Shell
pi@raspberrypi:~$ vim-addons status
# Name                     User Status  System Status 
editexisting                removed       removed       
jinja                       removed       removed       
justify                     removed       removed       
matchit                     installed     removed       
voom                        installed     removed 
```

查看 `~/.vim/` 目录：

```Shell
pi@raspberrypi:~$ ls .vim
autoload  doc  plugin

pi@raspberrypi:~/.vim$ ls plugin/
matchit.vim  voom.vim

pi@raspberrypi:~/.vim$ ls autoload/
voom  voom.vim
```

### netrw

[nerdtree](https://github.com/scrooloose/nerdtree) - tree explorer plugin for vim  
[Vim: you don't need NERDtree or (maybe) netrw](https://shapeshed.com/vim-netrw/)  

### ActivateAddons

在 ~/.vimrc 中添加以下行：

```Shell
"vim-addon-manager
fun SetupVAM()
set runtimepath+=/usr/bin/vim-addon-manager
call vam#ActivateAddons(['matchit', 'voom'])
endf
call SetupVAM()
```

报错！！！
