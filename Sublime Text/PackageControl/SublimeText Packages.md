
## [Package Control](https://packagecontrol.io/)
[wbond/package_control](https://github.com/wbond/package_control)

The Sublime Text package manager that makes it exceedingly simple to find, install and keep packages up-to-date.

[Sublime Text 3 安装Package Control](http://www.cnblogs.com/luoshupeng/archive/2013/09/09/3310777.html)  
[Sublime Text 3 安装插件管理 Package Control](http://jingyan.baidu.com/article/d3b74d64a302631f77e609fa.html)  
[**Sublime text 3 中Package Control 的安装与使用方法**](http://devework.com/sublime-text-3-package-control.html)  

### Simple
The simplest method of installation is through the Sublime Text console.

通过 <kbd>control<kbd><kbd>`<kbd> 可调出 ST 的控制台，在其中执行以下代码可安装 Package Control。

```python
import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

### Manual
1. 从 packagecontrol.io 网站下载 [Package Control.sublime-package](https://packagecontrol.io/Package%20Control.sublime-package)。  
2. 通过菜单 `Preferences | Browse Packages` 可定位到 ST3 的插件安装目录 `~/Library/Application Support/Sublime Text 3`，回退到父目录，将下载的 **`Package Control.sublime-package`** 拷贝到 `Installed Packages` 目录。  
3. 重启 ST3，在 Preferences 菜单下将新增 Package Settings 和 Package Control 两项菜单。  

![手动拷贝Package_Control到Installed_Packages目录.png](images/手动拷贝Package_Control到Installed_Packages目录.png)

## Package Install/Remove
### Package 安装
插件的安装方法有两个：手动安装和通过插件管理器安装。
#### 手动安装
所谓手动安装，就是将下载的安装包解压缩到 Packages 目录（菜单->preferences->packages）。

**注意**：有些插件需要重命名为指定名称，请参考具体说明。

> 按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，通过 `Package Control: List Unmanaged Packages` 命令可列出手动安装不受管理器管理的插件。

#### 插件管理器安装
用 Package Control 安装插件的方法：

按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，输入 `Install` 或 `PCI` 查找到 `Package Control: Install Package`，选中点击将调出可安装的插件列表。

![Command+Shift+P(Command_Palette)-PCI.png](images/Command+Shift+P(Command_Palette)-PCI.png)

在搜索框中输入字符串可模糊匹配查找，例如输入 `Clickable` 搜索到 `Clickable URLs` 插件：

![1-Clickable_URLs-Search.png](images/1-Clickable_URLs-Search.png)

在列表中选中 `Clickable URLs` 插件，双击即可自动安装。  

![2-Clickable_URLs-Intall.png](images/2-Clickable_URLs-Intall.png)

通过插件管理器（Package Control）安装的插件存放在 `~/Library/Application Support/Sublime Text 3/Installed Packages` 目录下。

![3-Clickable_URLs-Installed.png](images/3-Clickable_URLs-Installed.png)

> 有的网络环境可能会不允许访问陌生的网络环境从而设置防火墙，而 Sublime Text 貌似无法设置代理，则无法获取到安装包列表了。此时，只能通过手工安装。  
>  
> 按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，通过 `Package Control: List Packages` 命令可列出所有安装的插件。  

### 插件卸载
与安装方式对应，可以直接 `Browse Packages...` 到 `Packages` 或 `Installed Packages` 目录，手工移除对应插件的目录或 `*.sublime-package` 文件。

按下 `Command+Shift+P` / `Ctrl+Shift+P` 调出命令面板，输入 `Remove` 或 `PCR`，查找到 `Package Control: Remove Package`，选中点击即可卸载指定插件。

调出 `Remove Package` 选项并回车，然后在列表中选中要安装的插件。

## [Sublime Text 3 插件备忘录](http://www.jianshu.com/p/9ee45b61b569)
[Sublime Text 2/3安装使用及常用插件](http://www.cnblogs.com/dudumao/p/4054086.html)  
[前端开发者需要的10个Sublime插件](http://web.jobbole.com/82177/)  
[20 个强大的 Sublime Text 插件](http://www.oschina.net/translate/20-powerful-sublimetext-plugins)  
[全栈开发必备的10款 Sublime Text 插件](http://www.cnblogs.com/lhb25/p/10-essential-sublime-text-plugins.html)  

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

### Wrap-Plus
[Sublime-Wrap-Plus](https://github.com/ehuss/Sublime-Wrap-Plus)

### BracketHighlighter
[facelessuser/BracketHighlighter](https://github.com/facelessuser/BracketHighlighter)

[sublime text3下BracketHighlighter的配置方法](http://www.cnblogs.com/liu-l/p/3866458.html)

### SideBar
#### SyncedSideBar
#### [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements)

[Sublime Text一个小插件——SideBarEnhancements](http://www.qdfuns.com/notes/13810/d9b9ed2fb80785dae88a5344ef0f30d4.html)  
[sublime text侧边栏插件-SideBarEnhancements](http://blog.csdn.net/sunny_girls/article/details/44134845)

#### [SublimeFileBrowser](https://github.com/aziz/SublimeFileBrowser)

### Markdown
#### MarkdownEditing
[SublimeText-Markdown/MarkdownEditing](https://github.com/SublimeText-Markdown/MarkdownEditing)

#### MarkdownTOC
MarkdownTOC(Table Of Contents) Plugin for Sublime Text

#### Markdown Preview
[revolunet/sublimetext-markdown-preview](https://github.com/revolunet/sublimetext-markdown-preview)

#### MarkdownLivePreview
A Sublime Text 3 plugin to preview your markdown as you type
