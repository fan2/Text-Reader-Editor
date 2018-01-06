参考文档：[File Navigation](http://docs.sublimetext.info/en/latest/file_management/file_navigation.html) | [Goto Anything](http://docs.sublimetext.info/en/latest/file_management/file_navigation.html#goto-anything)

## File
在控制面板中输入 `Copy` 可列出系统自带和插件支持的拷贝相关的操作。

- Copy File Directory：拷贝目录  
- Copy File Name：拷贝文件名  
- Copy File Path：拷贝文件路径(目录/文件名)  

> 在 tab 上右键上下文菜单中也有 Copy 相关的快捷操作。  
> 在文件编辑区右键上下文菜单也有 `Copy File Path` 操作选项；`Reveal in Finder` 可快速定位到当前文件在 Finder 中的目录位置。  

在控制面板中输入 `Insert` 可列出系统自带和插件支持的拷贝相关的操作。

- Insert File Directory：在编辑点插入当前文件所在目录  
- Insert File Name：在编辑点插入当前文件名称  
- Insert File Path：在编辑点插入当前文件路径  

> 在文件编辑区右键上下文菜单中的 `Path Tools` 展开二级菜单中可以看到以上 Copy 和 Insert 操作选项。  

## Line
### New Line
`⌘↩`：在当前行下面新增一行然后跳至该行  
`⌘⇧↩`：在当前行上面增加一行并跳至该行  

### Split & Join
有时我们需要对一片区域的所有行进行同时编辑。

`⌘⇧L`：将当前选中区域打散（Split into lines），然后在多行尾部进行同时编辑。  
`⌘J`：将当前选中区域合并为一行（Join Lines）。  

## Comment
`⌘/`：注释当前行（行首插入 //）。  
`⌥⌘/`：插入块注释 /**/，光标聚焦注释编辑起始点。  

## 文件 tab 切换
`⌘⇧[` / `⌘⇧]`：macOS 通用切换 tab 操作。  
`⌥⌘←` / `⌥⌘→` ：Sublime Text 切换 tab 操作。  

`⌘` + `{tab index}`：Command + 数字，打开指定索引的 tab。

## Jumping（Go to）
### 跳转到行
`^G`：调出行跳转搜索列表框，输入行号可跳转到指定行。

在底部 [Console](http://docs.sublimetext.info/en/sublime-text-3/extensibility/commands.html) 中输入以下命名可跳转到第10行：

```python
view.run_command("goto_line", {"line": 10})
```

### 通用跳转
`⌘P`：调出文件跳转搜索列表框，会列出当前打开的文件（或者是当前打开的文件夹下的文件），输入文件名然后 Enter，或者通过上下方向键（↑↓）切换到文件。

> **模糊匹配查找**（Fuzzy String Matching）

Sublime Text 使用模糊字符串匹配，这就意味着你可以通过文件名的前缀、首字母或是某部分进行匹配：例如，EIS、Eclip 和 Stupid 都可以匹配 EclipseIsStupid.java。

`⌘P` 默认调出文件跳转搜索列表框，搜索栏为空，可模糊匹配文件名。但是它实际上是 `Goto Everything`，输入不同的搜索前缀符，可执行不同维度的搜索定位跳转。

- **`:`** 作为搜索前缀时，则为行号跳转：输入 `:12` 跳转到文件的第12行。  
- **`#`** 作为搜索前缀时，则为关键字跳转：输入 `#keyword` 跳转到 keyword 所在的位置。  

### 跳转到符号
尽管 Sublime Text 是一个文本编辑器，但它能够对代码符号进行一定程度的索引。

**`⌘R`**（Goto Symbol）：调出符号跳转搜索列表框，等效于 `⌘P` 输入 **`@`** 搜索前缀。  
列表列出了当前文件中的符号（例如类名和函数名，但无法深入到变量名），输入 `@symbol` 再点击  Enter 则可跳转到 symbol 符号所在的位置。  
如果是 Markdown  文档，则会列出其大纲（TOC）。  

**`⌥⌘↓`**：快速跳转到当前光标所在符号的定义处（Goto Definition）。
