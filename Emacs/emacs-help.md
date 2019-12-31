## help

[Help](https://www.gnu.org/software/emacs/manual/html_node/emacs/Help.html)  
[Help Summary](https://www.gnu.org/software/emacs/manual/html_node/emacs/Help-Summary.html)  
[Help Mode Commands](https://www.gnu.org/software/emacs/manual/html_node/emacs/Help-Mode.html)  

按下 `<C-h>` 或 `F1`，底栏提示如下：

```
C-h (Type ? for further options)-
```

按照提示，输入 `?` 或者再次按下 `<C-h>` 展示帮助内容：

```
You have typed C-h, the help character.  Type a Help option:
(Use SPC or DEL to scroll through this text.  Type q to exit the Help command.)

a PATTERN   Show commands whose name matches the PATTERN (a list of words
	      or a regexp).  See also the ‘apropos’ command.
b           Display all key bindings.
c KEYS      Display the command name run by the given key sequence.

i           Start the Info documentation reader: read included manuals.
```

底栏提示如下：

```
Type one of the options listed, or SPACE or DEL to scroll:
```

按下空格键向下翻页；按下 DEL（BackSpace）键向上翻页。  
按下 `b` 显示所有的 key bindings（Key translations）。  
按下 `q` 退出帮助页面? 按下 Meta 键（macOS 为 Esc+）退出帮助页面。  

### Info

`<C-h>` 后输入 `i` 启动 Info documentation reader。

```
(dir)Top

The Info Directory
******************

  The Info Directory is the top-level menu of major Info topics.
  Type "d" in Info to return to the Info Directory.  Type "q" to exit Info.
  Type "?" for a list of Info commands, or "h" to visit an Info tutorial.
  Type "m" to choose a menu item--for instance,
    "mEmacs<Return>" visits the Emacs manual.
  In Emacs Info, you can click mouse button 2 on a menu item
  or cross reference to follow it to its target.
  Each menu line that starts with a * is a topic you can select with "m".
  You can also select a topic by typing its ordinal number.
  Every third topic has a red * to help pick the right number to type.
```

按下 `q` 退出帮助信息页面。

### describe-bindings

`<M-x> describe-bindings` Show a list of all the current key bindings. This shows you all available emacs shortcuts and the function invoked by the shortcut.

Type `C-x 1` to delete the help window, `C-M-v` to scroll help.
