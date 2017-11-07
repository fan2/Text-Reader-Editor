# 在命令行中添加 subl 命令

Sublime Text 拥有一个叫做 **subl** 的命令行工具，可以用来通过终端打开一个文件或者一整个文件夹。

```Shell
faner@THOMASFAN-MB0:~|⇒  echo $PATH
/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
```

建立一个指向 subl 二进制文件的符号链接（symbolic links）到 `/usr/local/bin` 目录下，使 Shell 能从 PATH 中找到 subl 命令：

```Shell
faner@THOMASFAN-MB0:~|⇒  sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin
```

输入 `subl` 命令，即可启动 Sublime Text；如果已经启动，则打开应用。

```Shell
faner@THOMASFAN-MB0:~|⇒  subl
```

输入 `subl -v` 命令，即可查看 Sublime Text 版本号：

```Shell
faner@THOMASFAN-MB0:~|⇒  subl -v
Sublime Text Build 3143
```

输入 `subl -h` 命令，即可查看 subl 帮助：

```Shell
faner@THOMASFAN-MB0:~|⇒  subl -h
Sublime Text build 3143

Usage: subl [arguments] [files]         edit the given files
   or: subl [arguments] [directories]   open the given directories
   or: subl [arguments] -               edit stdin

Arguments:
  --project <project>: Load the given project
  --command <command>: Run the given command
  -n or --new-window:  Open a new window
  -a or --add:         Add folders to the current window
  -w or --wait:        Wait for the files to be closed before returning
  -b or --background:  Don't activate the application
  -s or --stay:        Keep the application activated after closing the file
  -h or --help:        Show help (this message) and exit
  -v or --version:     Show version and exit

--wait is implied if reading from stdin. Use --stay to not switch back
to the terminal when a file is closed (only relevant if waiting for a file).

Filenames may be given a :line or :line:column suffix to open at a specific
location.
```

输入 `subl file` 命令，即可调用 Sublime Text 打开文件：

```Shell
faner@THOMASFAN-MB0:~|⇒  subl Downloads/man.vim                      
```

当然，也可输入 `subl dir` 打开文件夹。
