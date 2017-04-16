升级Xcode7后XVim插件失效的修复办法
===

打开 [XVim.xcodeproj](https://github.com/XVimProject/XVim) 工程，`option+command+R`编辑XVim for Xcode5 and 6的Scheme Build Configuration为Release，然后点击`Run`编译插件。

Xcode控制台提示加载插件错误：
----
```Shell
2015-10-22 09:48:43.125 Xcode[2211:41766] [MT] PluginLoading: Required plug-in compatibility UUID 7265231C-39B4-402C-89E1-16167C4CC990 for plug-in at path '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/XVim.xcplugin' not present in DVTPlugInCompatibilityUUIDs
2015-10-22 09:48:43.125 Xcode[2211:41766] [MT] PluginLoading: Required plug-in compatibility UUID 7265231C-39B4-402C-89E1-16167C4CC990 for plug-in at path '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/OpenInSublimeText.xcplugin' not present in DVTPlugInCompatibilityUUIDs
2015-10-22 09:48:43.125 Xcode[2211:41766] [MT] PluginLoading: Required plug-in compatibility UUID 7265231C-39B4-402C-89E1-16167C4CC990 for plug-in at path '~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/BBUDebuggerTuckAway.xcplugin' not present in DVTPlugInCompatibilityUUIDs
```

###1.修改插件工程的`XVIM_XCODE_VERSION`

按照《[how to make the XVim still available on xcode7](http://blog.csdn.net/eldn__/article/details/46953933)》将`XVIM_XCODE_VERSION=5`修改为`XVIM_XCODE_VERSION=7`，编译依然报错。

###2.修改插件配置键`DVTPlugInCompatibilityUUIDs`
根据提示在插件`Info.plist`的`DVTPlugInCompatibilityUUIDs`键中添加Xcode7对应的UUID：
打开`~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/XVim.xcplugin/Contents`目录下的`Info.plist`文件，为数组`DVTPlugInCompatibilityUUIDs`添加Xcode7的UUID：`7265231C-39B4-402C-89E1-16167C4CC990`。

###3.[脚本批量更新失效插件](http://joeshang.github.io/2015/04/10/fix-xcode-upgrade-plugin-invalid/)

上述Xcode错误提示中，除了插件`XVim.xcplugin`外，`OpenInSublimeText.xcplugin`和`BBUDebuggerTuckAway.xcplugin`也报错PluginLoading:

```Shell
Required plug-in compatibility UUID 7265231C-39B4-402C-89E1-16167C4CC990
```

- 当前版本Xcode的UUID可以通过读取/Applications/Xcode.app/Contents/Info.plist的键`DVTPlugInCompatibilityUUID`获得。
- 利用`find`命令查找`path/to/Xcode/Plug-ins`目录下所有插件(*.xcplugin)下名为`Info.plist`的文件
- 通过 xargs 命令对上一步的搜索结果进行“for 循环”，针对每个插件的`Info.plist`文件，数组（DVTPlugInCompatibilityUUIDs）增加当前Xcode的DVTPlugInCompatibilityUUID值。

```Shell
find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID`
```

---
重启Xcode将警告提示Unexpected code bundle "XVim.xcplugin"，忽略警告选择［Load Bundle］即可。
