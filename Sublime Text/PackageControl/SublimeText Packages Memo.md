# [Sublime Text 3 插件备忘录](http://www.jianshu.com/p/9ee45b61b569)
[Sublime Text 2/3安装使用及常用插件](http://www.cnblogs.com/dudumao/p/4054086.html)  
[前端开发者需要的10个Sublime插件](http://web.jobbole.com/82177/)  
[20 个强大的 Sublime Text 插件](http://www.oschina.net/translate/20-powerful-sublimetext-plugins)  
[全栈开发必备的10款 Sublime Text 插件](http://www.cnblogs.com/lhb25/p/10-essential-sublime-text-plugins.html)  

## format & layout
### [Wrap-Plus](https://packagecontrol.io/packages/Wrap%20Plus)
[Sublime-Wrap-Plus](https://github.com/ehuss/Sublime-Wrap-Plus)

### [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
[facelessuser/BracketHighlighter](https://github.com/facelessuser/BracketHighlighter)

[sublime text3下BracketHighlighter的配置方法](http://www.cnblogs.com/liu-l/p/3866458.html)

Bracket Highlighter matches a variety of brackets such as: `[]`, `()`, `{}`, `""`, `''`, `#!xml <tag></tag>`, and even custom brackets.

该插件在 gutter 列显示匹配的区块括号。

## Lines
### [Clickable Urls](https://packagecontrol.io/packages/Clickable%20URLs)
[leonid-shevtsov/ClickableUrls_SublimeText](https://github.com/leonid-shevtsov/ClickableUrls_SublimeText)

This plugin underlines URLs in Sublime Text, and lets you open them with a keystroke

1. 将鼠标放置在超链接之上，使用快捷键 `option+command+enter`(`⌥⌘↩`) / `Ctrl+Alt+Enter` 即可在默认浏览器中网址。  
2. 或双指单击右键，可以 Open %URL%。

### [Filter Lines](https://packagecontrol.io/packages/Filter%20Lines)
[davidpeckham/sublime-filterlines](https://github.com/davidpeckham/sublime-filterlines)

Quickly find all lines matching a string or regular expression

`Edit | Line` 菜单下将会增加两项：

	- **Filter with Regex**：`⌘K ⌘R`  
	- **Filter with String**：`⌘K ⌘S`  

另外，在控制面板中输入 **`Filter Lines: `** 也可列出该插件支持的可选操作。

### [Delete Blank Lines](https://packagecontrol.io/packages/DeleteBlankLines)
[NicholasBuse/sublime_DeleteBlankLines](https://github.com/NicholasBuse/sublime_DeleteBlankLines)

Deletes blank (or surplus blank) lines from a selection

[SublimeText 删除空行](http://blog.sina.com.cn/s/blog_671c54fe0102vja7.html)

`Edit | Line` 菜单下将会增加两项：

	- **Delete blank lines**：`^⌥Del`  
	- **Delete Surplus blank lines**：`⇧^⌥Del`  

另外，在控制面板中输入 **`Delet Blank Lines`** 也可列出该插件支持的可选操作。

## File
### [FileRename](https://packagecontrol.io/packages/File%20Rename)
[brianlow/FileRename](https://github.com/brianlow/FileRename)

Rename files from the ST3 command palette

**To run**:

`Ctrl-Shift-P` or `Command-Shift-P` then type **`File:Rename`** or `fr` for short.

另外一种思路：`File | Open...` 菜单支持打开文件夹，在左侧边栏中右键文件，上下文菜单支持 Rename 重命名文件。

> [Simple Way To Rename The Current File](http://www.sublimetext.com/forum/viewtopic.php?f=2&t=9534)  
> [How to rename a file in Sublime Text 3?](http://stackoverflow.com/questions/19122581/how-to-rename-a-file-in-sublime-text-3)  

### [AdvancedNewFile](https://github.com/skuroda/Sublime-AdvancedNewFile)
File creation plugin for Sublime Text 2 and Sublime Text 3.

	- `super+alt+n`(<kbd>⌘</kbd><kbd>⌥</kbd><kbd>n</kbd>): General keymap to create new files.  

底栏出现 **Enter a path for a new file**：输入 `~/Downloads/testAdvancedNewFile.txt` 然后按下 <kbd>enter</kbd> 键，即可创建并打开文件 testAdvancedNewFile.txt。

	- `shift+super+alt+n`(<kbd>⇧</kbd><kbd>⌘</kbd><kbd>⌥</kbd><kbd>n</kbd>): In addition to creating the folders specified, new folders will also contain an __init__.py file.  

这个好像快捷键和 File Navigator 的重合了？

另外，在控制面板中输入 **`ANF: `** 也可列出该插件支持的可选操作：

	- ANF: New File  
	- ANF: Delete File  
	- ANF: Rename File  
	- ANF: Copy Current File  
	- ANF: Delete Current File  

### [File Navigator](https://github.com/csch0/SublimeText-File-Navigator)
File Navigator plugin for Sublime Text

Things you can do with this plugin are:

	- **create** new files and directories
	- **copy**/**move**/**paste** existing files/directories
	- **rename** existing files
	- **delete** existing files

`super+shift+o`(<kbd>⇧</kbd><kbd>⌘</kbd><kbd>o</kbd>)：打开列表面板，展示当前所有打开文档所在的目录。

![FileNavigator-1-Directories](images/FileNavigator-1-Directories.png)

通过上下方向键移动聚焦目录，按下 <kbd>enter</kbd> 键可选中进入目录，列出目录下的文件。

![FileNavigator-2-dirlist](images/FileNavigator-2-dirlist.png)

选中 `..` 按下 <kbd>enter</kbd> 键进入上层目录。  
按下  <kbd>tab</kbd>  键可在目录列表和目录操作之间切换。  

![FileNavigator-3-tab-to-dirop](images/FileNavigator-3-tab-to-dirop.png)

通过上下方向键移动聚焦文件，按下 <kbd>enter</kbd> 键选中文件 `C++-STL-Container.md`，然后列出可针对文件的操作项：

![FileNavigator-4-choose-file](images/FileNavigator-4-choose-file.png)

## SideBar
### [SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
[titoBouzout/SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements)

Enhancements to Sublime Text sidebar. Files and folders.

[Sublime Text一个小插件——SideBarEnhancements](http://www.qdfuns.com/notes/13810/d9b9ed2fb80785dae88a5344ef0f30d4.html)  
[sublime text侧边栏插件-SideBarEnhancements](http://blog.csdn.net/sunny_girls/article/details/44134845)  

打开文件夹，在左侧边栏中右键文件，将出现包含 `Rename`、`Delete File`、`Reveal in Finder` 的上下文菜单：  
![SideBarEnhancements-singleFile-rightContextMenu.png](images/SideBarEnhancements-singleFile-rightContextMenu.png)

同时选中2个文件，右键上下文菜单将包含 `Diff Files ...` 菜单项：  
![SideBarEnhancements-twoFiles-rightContextMenu.png](images/SideBarEnhancements-twoFiles-rightContextMenu.png)

### [SyncedSideBar](https://packagecontrol.io/packages/SyncedSideBar)
[TheSpyder/SyncedSideBar](https://github.com/TheSpyder/SyncedSideBar)

plugin to sync project sidebar (**_folder view_**) with the currently active file.  
As you switch tabs Sublime **highlights** only files in folders that are already expanded.   
It accomplishes this through use of the “`reveal in side bar`” command from the default _context menu_.

安装 `SyncedSideBar` 之后，右键剪辑区出现上下文菜单中将包含 `Reveal in Side Bar` 项，点击将定位到左侧边栏中的当前文件并高亮：

![SyncedSideBar-reveal_in_side_bar.png](images/SyncedSideBar-reveal_in_side_bar.png)

### [FileBrowser](https://packagecontrol.io/packages/FileBrowser)
[aziz/SublimeFileBrowser](https://github.com/aziz/SublimeFileBrowser)

	- **Browse Mode**: Left/Right Sidebar：左/右侧将新建一个 GROUP 展示当前文件所在目录。点击 `..` 可展开上级目录。`F1`快速打开 Left Sidebar。  
	- **Browse Mode**: Current file or project：新建一个 tab（不新建 GROUP ）。  

	- **Browse Mode**: Jump List  
	- **Browse Mode**: Jump List Quick Panel  

### [Outline](https://packagecontrol.io/packages/Outline)
shows the outline of your document or class/function name list of your code in a sidebar-style tab.  

展示 markdown 的 **TOC** 和 程序代码的**符号列表**(symbol list)。

通过 Package Control 输入 `Outline` 默认2种模式：

	- Browse Mode: Outline(Left)  
	- Browse Mode: Outline(Right)  

3种 `FileBrower` 与 `Outline` 混合模式：

	- Browse Mode:  FileBrowser Left, Outline Right  
	- Browse Mode: FileBrowser Top Left, Outline Bottom Left  
	- Browse Mode: FileBrowser Top Right, Outline Bottom Right  

![Browse_Mode.png](images/Browse_Mode.png)

![FileBrowser_Left-Outline_Right](images/Browse_Mode=FileBrowser_Left-Outline_Right.png)

## Markdown
[Sublime插件：Markdown篇](http://www.jianshu.com/p/aa30cc25c91b)  
[在 Sublime 中配置 Markdown 环境](http://www.tuicool.com/articles/NJrQfub)  

### [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended) + [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended)
[Markdown Extended](https://github.com/jonschlinkert/sublime-markdown-extended) + [Monokai Extended](https://github.com/jonschlinkert/sublime-monokai-extended) 是不错的 Markdown 语法渲染及配色方案，支持对多种语言的高亮。

Monokai Extended 提供了 Origin、Bright(深色)、**_Light_**(**浅色**) 三种配色方案。  

**Switch Themes**：

Open a Markdown file in Sublime Text and make sure that syntax highlighting is set to Markdown Extended (not Markdown): `View -> Syntax -> Markdown Extended`.

Then go to `Preferences -> Color Scheme -> Monokai Extended` and pick a theme.

![MarkdownExtended+MonokaiExtended.png](https://camo.githubusercontent.com/e5112e65510eada23f8cdc306ba46bfe1043f201/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3338333939342f3732363833332f30666465306431362d653133382d313165322d386533642d3864626663393132323465372e706e67)

### [MarkdownEditing](https://packagecontrol.io/packages/MarkdownEditing)
[SublimeText-Markdown/MarkdownEditing](https://github.com/SublimeText-Markdown/MarkdownEditing)

Markdown plugin for Sublime Text. Provides a decent Markdown color scheme (light and dark) with more **robust** syntax highlighting and useful Markdown editing features for Sublime Text.

安装 **MarkdownEditing** 插件之后，`View | Syntax` 下将多出 `MarkdownEditing` 项，其下包括 _`Markdown`_、_`Markdown GFM`_、_`MultiMarkdown`_ 三种 Markdown 语法。

安装了 MarkdownEditing 插件后，打开 Markdown 文件的默认 Syntax 将变为 _**`Markdown GFM`**_。支持 Github Favored Markdown 语法高亮。

同时 **MarkdownEditing** 插件提供了 `Yellow`、`Focus`、`Dark` 三种主题配色方案。

**Key Bindings**:

OS X    | Windows/Linux | Description
--------|--------------------|------------------
⌘1...6 | Ctrl1...6                | add the corresponding number of hashmarks for headlines.
⌘Tab | ShiftTab	             | Fold/Unfold current section.
⌘⇧Tab | CtrlShiftTab | Fold all sections under headings of a certain level.

以上热键均与 SublimeText 已有热键冲突，只有 `⇧⇥` 可用于折叠段落（section）。

### [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview)
[revolunet/sublimetext-markdown-preview](https://github.com/revolunet/sublimetext-markdown-preview)

![Markdown_Preview.png](images/Markdown_Preview.png)

### [MarkdownLivePreview](https://packagecontrol.io/packages/MarkdownLivePreview)
A Sublime Text 3 plugin to preview your markdown as you type

<kbd>option</kbd>+<kbd>M</kbd>：新建 GROUP 在右侧(Layout = Columns:2) 展示实时渲染预览效果。

渲染效果不是很好。

### [OmniMarkupPreviewer](https://packagecontrol.io/packages/OmniMarkupPreviewer)
实时在浏览器中预览，可替代 Markdown Preview。

  **Windows, Linux:**
  
	  * <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>: Preview Markup in Browser.
	  * <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>: Export Markup as HTML.
	  * <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>C</kbd>: Copy Markup as HTML.
  
  **OSX:**
  
	  * <kbd>⌘</kbd>+<kbd>⌥</kbd>+<kbd>O</kbd>: Preview Markup in Browser.
	  * <kbd>⌘</kbd>+<kbd>⌥</kbd>+<kbd>X</kbd>: Export Markup as HTML.
	  * <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>C</kbd>: Copy Markup as HTML.

### [MarkdownTOC](https://packagecontrol.io/packages/MarkdownTOC)
MarkdownTOC(Table Of Contents) Plugin for Sublime Text

菜单 `Tools|MarkdownTOC` 下有两项：Insert TOC，Update TOC。
