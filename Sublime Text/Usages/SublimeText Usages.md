# [Sublime Text 3 文档](http://feliving.github.io/Sublime-Text-3-Documentation/)

## References
### 竞品对比
[Vim 党的 Sublime Text/Atom/VS Code的抉择](http://www.jianshu.com/p/4d2a01c84d85)  
[编辑器性能测试：Atom 、VS Code、Sublime Text](http://blog.jobbole.com/109756/)  

### 入门指南
[Sublime Text 2 强大的编辑功能](http://blog.csdn.net/qfatao/article/details/25131711)  
[Sublime Text 2 - 性感无比的代码编辑器](http://www.iplaysoft.com/sublimetext.html)  
[神级代码编辑器 Sublime Text 全程指南](http://www.cocoachina.com/programmer/20150715/12550.html)  
[超级文本编辑器Sublime Text3](http://blog.csdn.net/enjoyyl/article/details/50057491)  
[Sublime Text 3技巧：支持GB2312和GBK编码](http://blog.csdn.net/ubuntulover/article/details/21101979)  
[Sublime Text 3 Markdown 写作设置](https://jdhao.github.io/2017/03/04/Sublime-Windows-Markdown/)

### 使用技巧
[Sublime Text代码编辑器-初学者不知道的那些事](http://article.yeeyan.org/view/165434/302716)  
[Sublime Text 有哪些实用技巧？](http://www.zhihu.com/question/19976788)  
[Sublime Text 有哪些使用技巧？](http://www.zhihu.com/question/24896283)  
[12个不可不知的Sublime Text应用技巧和诀窍](http://segmentfault.com/a/1190000000505218)  
[sublime text 3解放鼠标的快捷键总结](http://dengo.org/archives/970)  

### 配置文件
[Sublime Text 2 设置文件详解](http://linux.cn/article-799-1.html)  
[sublime text 2 使用介绍（包括配置文件）](http://blog.csdn.net/tk86935367/article/details/8857840)  
[Sublime Text 2/3 配置文件详解](http://www.imjeff.cn/blog/88/)

## File
### Open
`File | Open...` 菜单支持选择打开 **文件夹**，这在阅读编辑一个文件夹下的代码时尤其有用。

使用 `⌘P` 调出文件跳转搜索列表框，可快速切换当前文件夹下的文件。

## View
### SideBar
`⌘+K+B`：开/关 侧边栏

#### Show Open Files
侧边栏显示所有打开文件。

### Hide
Hide MiniMap：关闭迷你地图。

#### Enter Full Screen
`^⌘F`：进入全屏模式（Enter Full Screen）  
`⇧^⌘F`：进入无干扰全屏模式（Enter Distraction Free Mode）  

#### Layout
可设置视图分割窗口：  

- Single：单窗口（多tab）  
- Columns：2,3,4  
- Rows：2,3  
- Grid：4  

切分出来窗口组（Group）

[Sublime Text 3怎么将窗口布局成┣这样的布局。](https://segmentfault.com/q/1010000000491630)

### Syntax
[在Sublime Text 2中设置任意扩展名文件的默认语法](http://www.cnblogs.com/zhangronghua/archive/2012/02/29/settingdefaultsyntaxforanyfileinsublimetext2.html)  
[Sublime Text 2 默认语法类型设置](http://blog.ailms.me/2013/06/27/sublime-text2-default-syntax.html)  
[设置文本渲染语法默认为 Plain Text](http://stackoverflow.com/questions/27454555/how-do-i-set-sublime-text-to-auto-detect-a-file-type-after-setting-it-once)

通过 `shift＋command＋P / Ctrl+Shift+P` 呼出 Tools | Command Pallette，然后输入 `Set Syntax:` 可选文本格式。

> Set Syntax: Plain Text —— 纯文本  
> Set Syntax: Markdown —— Markdown

### Indentation
Indent Using Spaces：默认设置4个空格填充 tab。tab width：4。

### Line Endings
句末换行符，默认为 Unix 风格。

### Word Wrap
自动换行：点击选中，默认的 Word Wrap Column 为 Automatic，根据窗口宽度折行。

[Quick Tip: Enable Sublime Text Word Wrap](http://justinseeley.com/tutorials/quick-tip-enable-sublime-text-word-wrap/)

### ruler
Column Guide Margin：80

## Selection
Add Previous Line：Ctrl+Alt+Up，向上竖（列）选  
Add Next Line：Ctrl+Alt+Down，向下竖（列）选  

竖选之后，鼠标为竖直线，可通过 shift 配合左右键，实现**竖直块选**。

### [列选择](http://feliving.github.io/Sublime-Text-3-Documentation/column_selection.html)
Windows Sublime Text：  

- 鼠标右键 + Shift 或 鼠标中键  
- 添加到选区: Ctrl  
- 从选区移除: Alt  

## Find
### 调出查找底栏

- Find：Ctrl+F，底栏可点击 `Find All` 查找所有。  
- Find Next：F3  
- Find Previous：Shift+F3  
- Incremental Find：Ctrl+I  

### 快速查找
基于上下文快速查找**当前光标**所在单词：

Quick Find：`⌥⌘G` / `Ctrl+F3`（Shift 反向向上查找）。  
Quick Find All：`^⌘G` / `Alt+F3`  

### Selection
查找到的关键词高亮为选中状态，此时配合 **Selection** 菜单：

Find All 之后，`⌘L` / `Ctrl+L`（Expand Selection to Line），选中所有查找单词所在行，进一步执行 Ctrl+C 拷贝出来粘贴，适用日志分析等场合。

使用 [davidpeckham/sublime-filterlines](https://github.com/davidpeckham/sublime-filterlines) 插件可查找筛选出所有包含关键词的行。

## Preferences
### Color Theme
#### 深色系

- Amy：   紫红色
- **Cobalt**：**蓝色**(推荐)
- Monokai：黑色
- Solarized：Light/Dark

#### 浅色系
- Dawn：白色
- **Slush & Popies**：白色(推荐)
