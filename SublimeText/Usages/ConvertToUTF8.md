## [解决乱码，让Sublime Text 2支持GB2312和GBK](http://zqpythonic.qiniucdn.com/data/20121229193556/index.html)
然后使用Ctrl+Shift+P打开命令行模式，在里面输入Install Package即可搜索需要的Package。一般使用“ConvertToUTF8”和“GBK Encoding Support”即可正常读取和写入CJK格式的文件了。

## [Sublime Text 3技巧：支持GB2312和GBK编码](http://blog.csdn.net/ubuntulover/article/details/21101979)
[Sublime Text 3技巧：支持GB2312和GBK编码](http://www.cnblogs.com/niray/p/4718094.html)  
[Sublime Text 3 安裝 ConvertToUTF8 - Mac篇](http://shazi.info/sublime-text-3-%E5%AE%89%E8%A3%9D-converttoutf8-with-package-control-mac%E7%AF%87/)

### [sublime text 3 乱码](http://www.cnblogs.com/fengtengfei/p/4136364.html)
ConvertToUTF8 + Codecs

### [Codecs33](https://packagecontrol.io/packages/Codecs33) / [Codec](https://packagecontrol.io/packages/Codec)
https://github.com/seanliang/Codecs33

CJK library files missing in the embedded Python of Sublime Text 3

Due to the limitation of embedded Python with Sublime Text 3, ConvertToUTF8 might not work properly. You can install this plugin to solve the problem.

```
File: /Users/faner/Projects/iPhoneQQ/master/Classes/engine/QQ/QQRelation/Protocol/oidb_0x7c4.proto
Encoding: GB2312
Error: Codecs missing

Please install Codecs33 plugin (https://github.com/seanliang/Codecs33/tree/osx).
```

需要安装 **OS X** 版的 [Codecs33]((https://github.com/seanliang/Codecs33/tree/osx))！！！

### [安装 ConvertToUTF8](https://hack0nair.me/2014-09-01-gb2312-and-gbk-support-on-sublime-text-for-osx/)

按下command + shift + p打开搜索框，输入install package回车，等待 package 列表的刷新。列表加载完成后，输入 **ConvertToUTF8** 并回车，开始安装。

为了让 ConvertToUTF8 运行得更稳定，推荐把 _Codecs_ 也装上。

重启 SubLime Text，就能无压力访问各类 GB2312、GBK 文件了。

### [GBK Encoding Support](https://packagecontrol.io/packages/GBK%20Encoding%20Support)
https://github.com/akira-cn/sublime-gbk

`File` 菜单将多出 `Set File Encoding to` 项，支持转码为 CJK：

- Chinese Simplified (GBK)  
- Chinese Traditional(BIG5)  
- Korean  
- Japanese  

### [安装 GBK](http://www.unicac.cn/share/Sublime-Text-2-layout.html)(old)
现在 Sublime Text 2 不支持 GB2312 和 GBK 编码方式中文乱码解决方法是安装一个 GBK 的插件即可解决。

安装方法和 安装zen coding 一样，安装好Package Control之后，通过快捷键[ctrl+shift+p]调出command palette，然后输入install，调出Package Control，然后找到 **GBK**，回车即可。

## references
[【图文详解】怎样解决sublime text打开gbk和gb2312中文乱码问题？](http://bbs.iaixue.com/forum.php?mod=viewthread&tid=1074)
