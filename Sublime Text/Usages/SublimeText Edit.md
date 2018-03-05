参考文档：[File Navigation](http://docs.sublimetext.info/en/latest/file_management/file_navigation.html) | [Goto Anything](http://docs.sublimetext.info/en/latest/file_management/file_navigation.html#goto-anything)

## File
在 Command Palette 中输入 ***`File: `*** 可查看文件相关的操作。

### Copy
在控制面板中输入 **`Copy`** 可列出系统自带和插件支持的拷贝相关的操作。

- Copy File Directory：拷贝目录  
- Copy File Name：拷贝文件名  
- Copy File Path：拷贝文件路径(目录/文件名)  

> 在 tab 上右键上下文菜单中也有 Copy 相关的快捷操作。  
> 在文件编辑区右键上下文菜单也有 `Copy File Path` 操作选项；`Reveal in Finder` 可快速定位到当前文件在 Finder 中的目录位置。  

### Insert
在控制面板中输入 **`Insert`** 可列出系统自带和插件支持的拷贝相关的操作。

- Insert File Directory：在编辑点插入当前文件所在目录  
- Insert File Name：在编辑点插入当前文件名称  
- Insert File Path：在编辑点插入当前文件路径  

> 在文件编辑区右键上下文菜单中的 `Path Tools` 展开二级菜单中可以看到以上 Copy 和 Insert 操作选项。  

### [FileRename](https://packagecontrol.io/packages/File%20Rename) 插件
File: Rename

弹窗输入新名称（Prompt for New Name）。

### [AdvancedNewFile](https://github.com/skuroda/Sublime-AdvancedNewFile) 插件

- ANF: New File  
	> Prompt: Enter a path for new file  
- ANF: Delete File  
	> Prompt: Enter path of file to delete  
- ANF: Rename File  
	> Prompt: Enter a new path for current file  
- ANF: Copy Current File  
	> Prompt: Enter a new path to copy file  
- ANF: Delete Current File  
	> Alert: confirm  

### [File Navigator](https://github.com/csch0/SublimeText-File-Navigator) 插件

super+shift+o(`⇧⌘o`)：打开列表面板，展示当前工程的所有目录。

通过上下方向键定位进入目录，指定某一文件，会列出可操作菜单（Open、Rename、Copy、Move、Delete）。

## Line

### New Line
`⌘↩`：在当前行下面新增一行然后跳至该行  
`⌘⇧↩`：在当前行上面增加一行并跳至该行  

### Split & Join
有时我们需要对一片区域的所有行进行同时编辑。

`⌘⇧L`：将当前选中区域打散（Split into lines），然后在多行尾部进行同时编辑。  
`⌘J`：将当前选中区域合并为一行（Join Lines）。  

### [Filter Lines](https://packagecontrol.io/packages/Filter%20Lines) 插件

## Comment
`⌘/`：注释当前行（行首插入 //）。  
`⌥⌘/`：插入块注释 /**/，光标聚焦注释编辑起始点。  

## tab
通过菜单 `View | Show/Hide Tabs` 或 Command Palette: `View: Toggle Tabs` 命令可设置显示/隐藏 tabs。

`⌘` + `{tab index}`：macOS Safari 等默认支持通过 `Command+tabN` 打开索引为 N 的 tab 页。  
`⌘⇧[` / `⌘⇧]`：macOS 通用切换 tab 操作。  
`⌥⌘←` / `⌥⌘→` ：Sublime Text 切换 tab 操作。  

### Open Files
通过菜单 `View | Side Bar | Show/Hide Open Files` 或 Command Palette: `View: Toggle Open Files in Side Bar` 可设置是否在侧边栏显示/隐藏已打开文件 tabs 对应的列表。

> tab 右上角 及 已打开文件列表文件名行首的关闭按钮（×）表示已保存；实心点（•）表示脏数据未保存。

## Goto

### Anything
**`⌘P`**（Goto Anything）：调出文件跳转搜索列表框，会列出当前工程（sublime-workspace，sublime-project）的所有文件（或者是当前打开的文件夹下的文件），通过上下方向键（↑↓）切换文件，按下 enter 键即可打开。

> Sublime Text 支持 **模糊匹配查找**（Fuzzy String Matching），这意味着你可以通过文件名的前缀、首字母或是某部分进行匹配：例如，EIS、Eclip 和 Stupid 都可以匹配 EclipseIsStupid.java。

`⌘P` 默认调出文件跳转搜索列表框，搜索栏为空，可模糊匹配文件名。但是它实际上是 `Goto Anything`，输入不同的搜索前缀符，可执行不同维度的搜索定位跳转。

- 以 **`:`** 作为搜索前缀时，则为行号跳转：输入 `:line` 跳转到文件的第 line 行。  
- 以 **`#`** 作为搜索前缀时，则为关键字跳转：输入 `#keyword` 跳转到 keyword。  
- 以 **`@`** 作为搜索前缀时，则为符号跳转：输入 `@symbol` 跳转到 symbol。  

### Line
**`^G`**（Goto Line）：调出行跳转搜索列表框，在 `:` 后输入行号即可定位跳转。

在底部 [Console](http://docs.sublimetext.info/en/sublime-text-3/extensibility/commands.html) 中输入以下命名可跳转到第10行：

```python
view.run_command("goto_line", {"line": 10})
```

### Symbol
尽管 Sublime Text 是一个文本编辑器，但它能够对代码符号进行一定程度的索引。

**`⌘R`**（Goto Symbol）：调出符号跳转搜索列表框，在 `@` 后输入符号即可定位跳转。  

> 列表列出了当前文件中的符号（例如类名和函数名，但无法深入到变量名），输入 `@symbol` 再点击  Enter 则可跳转到 symbol 符号所在的位置。  
>> 如果是 Markdown  文档，则会列出其大纲（TOC）。  

### Definition
**`⌥⌘↓`**：打开当前光标所在符号的所有定义处（Goto Definition 文件及行号）的列表面板，通过上下键可翻看。  

**`⌥⌘↑`**：切换头文件和实现文件（Goto Corresponding Header/Implementation）。  
