Mac 下的 Source Insight 替代品, 代码分析阅读工具 Understand.

## [向大家介绍一款代码阅读工具——Scitools Understand](http://blog.csdn.net/xkfz008/article/details/6931772)

不知道大家在平时看代码写代码都使用什么工具？

以前在 windows 下我一般使用 VS2008，其实我觉得 VS 做的还是很好的，它在调试方面的功能很强大，可以很好的查看变量的值，以及内存中的变化状况。现在转战 Fedora14，虽然无法使用 VS 了，但是我还是有时在虚拟机中安装一个VS的。

之前在阅读代码的时候，发现一款很好的代码阅读工具，是 Scitool 的 Understand，这个非常强大，等我开始使用 Fedora14 之后，找了找有没有相应的 linux 版本，没想到这么好，这个软件是跨平台的，有相应的 linux 版本，太好了。现在是在用这个软件写代码，然后利用 GCC 进行编译。

下面是一篇看到的文章，希望对大家有用。

## [图形化代码阅读工具——Scitools Understand](http://www.cnblogs.com/sdlwlxf/p/4278039.html)

Scitools 出品的 Understand 2.0。用了很多年了，比 Source Insight 强大很多。以前的名字叫 Understand for C/C++，Understand for Java，Understand for Ada，最近这几年合并成了一个产品。

最值得一提的是各种关系图的绘制，以及在这些图上的交互操作：Declaration Graphs / Hierarchy Graphs / Control Flow Graphs / Dependency Graphs / UML Class Diagram。

事实上图形化的分析功能，是我阅读代码中用到最多的。如果只需要代码高亮+全局符号跳转这样的功能，VS2010+VisualAssist，Xcode3/4，eclipse 这些 IDE 本身已经做的足够好了，不需要额外的代码阅读工具。

不客气的说，Source Insight 的图形分析功能在 Understand 面前就是个玩具。

另外一点是对多语言的支持，主流的 C/C++，Java，C# 就不说了，另外还支持 Ada/FORTRAN/Pascal/Cobol/PHP/HTML/CSS 等等一堆语言。当然，C++/Java/C# 之外的语言用的比较少，不太清楚这些对语言的支持程度是否能够达到和主流语言的相同水平。

除此之外这个软件是跨平台的，Windows/Linux/MacOS/Solaris 都支持。现在不少团队都需要同时维护多个 Mobile 平台，多个 Desktop 平台，或者 Client端/Server端 的程序。运行在多个平台上的代码阅读/分析工具对这样的团队应该会很有吸引力。

当然 Source Insight 也有非常强的地方，那就是能够支持异常复杂的高亮方案，除了颜色，还能指定不同的字体/字号/粗体/斜体。但是在我看来，这个feature似乎用处不大，因为最有益于工作效率的高亮方案，应该和你在 IDE 中一致的代码高亮方案。这样在 IDE 和代码阅读器之间切换时，才不需要动脑筋去切换方案。大脑对于常量/变量/类型/方法的识别，一切都应当在下意识中完成。

比较不幸的是，据我观察，这款软件在国内的认知率似乎并不是很高。一方面的原因可能是因为GUI的控件为了跨平台，无法做的很漂亮，另一方面的原因，可能是因为这个名字的缘故。相对于 Source Insight 而言，Understand 这个搜索关键字实在是太容易被埋没了。

希望能有更多的开发者喜欢上这款软件。

## [代码分析工具推荐 Understand](http://www.cnblogs.com/lidabo/archive/2013/01/14/2860240.html)
2013-01-14 19:46

## [代码阅读分析工具 Understand 2.0 试用](http://blog.csdn.net/qwang24/article/details/4064975)
2009-04-11 15:50

## [Understand: 高效代码静态分析神器详解](http://www.codemx.cn/2016/04/30/Understand01/)
2016-04-30

## [understand - 笔记](http://www.voidcn.com/blog/a731062834/article/p-5740393.html)
### [Understand文件比较工具](http://blog.csdn.net/archielau/article/details/7390187)

## understand - 问题
### [中文乱码](https://segmentfault.com/q/1010000002385460)

菜单：`Project | Configure Project | File Options | Encoding`

`File Encoding` 选择 `GB2312` （UTF-8，GBK？）。



