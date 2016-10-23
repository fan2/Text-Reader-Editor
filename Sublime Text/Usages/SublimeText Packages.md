
## Package Control
[wbond/package_control](https://github.com/wbond/package_control)

[Sublime Text 3 安装Package Control](http://www.cnblogs.com/luoshupeng/archive/2013/09/09/3310777.html)  
[Sublime Text 3 安装插件管理 Package Control](http://jingyan.baidu.com/article/d3b74d64a302631f77e609fa.html)  
[**Sublime text 3 中Package Control 的安装与使用方法**](http://devework.com/sublime-text-3-package-control.html)  

1. 从【https://packagecontrol.io/Package%20Control.sublime-package】下载Package Control.sublime-package，
2. 然后复制到【/Users/faner/Library/Application Support/Sublime Text 3/Installed Packages】目录下，
3. 在Preferences菜单下将新增Package Settings和Package Control两个菜单。

## Package Install/Remove
### Package 安装
插件的安装方法有两个：直接安装和插件管理安装。

所谓直接安装，就是将下载的安装包解压缩到 Packages 目录（菜单->preferences->packages）。

**注意**：有些插件需要重命名为指定名称，请参考具体说明。

---
用 Package Control 安装插件的方法：

按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，输入 `Install`， 调出 `Install Package` 选项并回车，然后在列表中选中要安装的插件。

有的网络环境可能会不允许访问陌生的网络环境从而设置防火墙，而Sublime Text 貌似无法设置代理，可能就获取不到安装包列表了。

### 插件卸载
与安装方式对应，可以直接 `Browse Packages...`  到 Packages 目录，删除对应插件的目录即可。

按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，输入 `Remove`， 调出 `Remove Package` 选项并回车，然后在列表中选中要安装的插件。

## [Sublime Text 3 插件备忘录](http://www.jianshu.com/p/9ee45b61b569)
[Sublime Text 2/3安装使用及常用插件](http://www.cnblogs.com/dudumao/p/4054086.html)  
[20 个强大的 Sublime Text 插件](http://www.oschina.net/translate/20-powerful-sublimetext-plugins)  
[全栈开发必备的10款 Sublime Text 插件](http://www.cnblogs.com/lhb25/p/10-essential-sublime-text-plugins.html)  

### Color Scheme
#### Dracula
[dracula/dracula-theme](https://github.com/dracula/dracula-theme)

A dark theme for Atom, Alfred, Emacs, Highlight.js, iTerm, JetBrains, Pygments, Slack, Sublime Text, TextMate, Terminal.app, Vim, Xcode, Zsh and many more.

#### Ciapre
[vinhnx/Ciapre.tmTheme](https://github.com/vinhnx/Ciapre.tmTheme)

Ciapre - an easy on the eyes Sublime Text/TextMate color scheme.

#### Brogrammer
[kenwheeler/brogrammer-theme](https://github.com/kenwheeler/brogrammer-theme)

Brogrammer is a flat sexy Sublime Text theme. Pushups not included.

### ClickableUrls
[leonid-shevtsov/ClickableUrls_SublimeText](https://github.com/leonid-shevtsov/ClickableUrls_SublimeText)

This plugin underlines URLs in Sublime Text, and lets you open them with a keystroke (Cmd+Option+Enter by default).

1. 将鼠标放置在超链接之上，使用快捷键 `option+command+enter` / `Ctrl+Alt+Enter` 即可在默认浏览器中网址。  
2. 双指单击右键，可以Open %URL%。

### filterlines
[davidpeckham/sublime-filterlines](https://github.com/davidpeckham/sublime-filterlines)

`Edit | Line` 菜单下将会增加两项：

- `Filter with Regex`  
- `Filter with String`

### DeleteBlankLines
[NicholasBuse/sublime_DeleteBlankLines](https://github.com/NicholasBuse/sublime_DeleteBlankLines)

[SublimeText 删除空行](http://blog.sina.com.cn/s/blog_671c54fe0102vja7.html)

`Edit | Line` 菜单下将会增加两项：

- `Delete blank lines`  
- `Delete Surplus blank lines`

### MarkdownEditing
[SublimeText-Markdown/MarkdownEditing](https://github.com/SublimeText-Markdown/MarkdownEditing)

### Markdown Preview
[revolunet/sublimetext-markdown-preview](https://github.com/revolunet/sublimetext-markdown-preview)
