
[C++ programming with Visual Studio Code](https://code.visualstudio.com/docs/languages/cpp)

在macOS下使用Visual Studio Code进行C/C++开发: [jianshu](http://www.jianshu.com/p/bb430259b7af) / [github](https://stidio.github.io/2017/01/use_vscode_for_c_c++_development_in_macos/)  
[Visual Studio Code 如何编写运行 C、C++ 程序？](https://www.zhihu.com/question/30315894/answer/154979413)  

[使用 vscode 开发 C 项目](https://zhuanlan.zhihu.com/p/26395112)  
[vscode 配置 C++ 编写环境](https://blog.csdn.net/desert187/article/details/51025786)  
[Visual Studio Code＋GNU Global打造代码编辑神器](https://cloud.tencent.com/developer/news/3178)  

[VS Code配置C++环境](http://gt4404gb.top/archives/276)  
[使用VSCode无痛编译C/C++](http://yzstr.com/2018/02/11/compile-with-vscode/)  

## extensions

### [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

**ms-vscode.cpptools**

adds language support for C/C++

- Code Formatting (clang-format)  
- Auto-Completion  
- Symbol Searching  
- Go to Definition/Declaration  
- Peek Definition/Declaration  
- Class/Method Navigation  
- Signature Help  
- Quick Info (Hover)  
- Error Squiggles  

如果由于网络策略等问题无法自动下载，可以采取下载到本地手动安装的方式。

1. 打开官方 [github](https://github.com/Microsoft/vscode-cpptools/releases) 下载页面，
点击选择最新版本的 `cpptools-osx.vsix` / `cpptools-win32.vsix` 下载到本地；  
2. 执行 `Extensions: Install from VSIX...` 命令，选择从本地安装 vsix 插件。  

安装完成后，可在命令面板中输入 `C/C++: ` 执行相关命令。

### [C/C++ Clang Command Adapter](https://marketplace.visualstudio.com/items?itemName=mitaki28.vscode-clang)

**mitaki28.vscode-clang**

提供自动完成和静态检测功能。

Completion and Diagnostic for C/C++/Objective-C using [Clang](http://clang.llvm.org/) command.

#### config

macOS 平台 Xcode 默认自带了 clang 工具链：

```
~
➞  clang -v
Apple LLVM version 10.0.0 (clang-1000.11.45.5)
Target: x86_64-apple-darwin18.5.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

~
➞  which clang
/usr/bin/clang

~
➞  whereis clang
/usr/bin/clang

~
➞  clang --help
OVERVIEW: clang LLVM compiler

USAGE: clang [options] <inputs>

OPTIONS:

```

`/urs/bin/clang` 默认已在系统环境变量 PATH 中，clang.executable 路径配置：

```json
  // Clang command or the path to the Clang executable
  "clang.executable": "clang",
```

如果是 Windows 平台，需要去 [LLVM Download Page](http://releases.llvm.org/download.html) 下载对应的 Clang 编译工具链。
然后配置 Clang 的安装路径：

```json
  "clang.executable": "C:\\Program Files\\LLVM\\bin\\clang.exe",
```

LLVM Extensions: [vscode-clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)  

### [C++ Intellisense](https://marketplace.visualstudio.com/items?itemName=austin.code-gnu-global)

**austin.code-gnu-global**

Provide Intellisense for C/C++ with the help of the [GNU Global](https://www.gnu.org/software/global/) tool in Visual Studio Code.

1. Make sure you have the latest `GNU Global` (>= 6.5) tool installed and added to PATH.  
2. In the workspace folder of your C/C++ project, run '`gtags`'. This will generate the GTAGS, GRTAGS, and GPATH files. If you made changes to your code, run '`gtags`' *again* to renew the tag files.  

也可尝试使用 [C/C++ GNU Global](https://marketplace.visualstudio.com/items?itemName=jaycetyle.vscode-gnu-global) 插件：forked/rewriten from C/C++ Intellisense and is still preliminary。

> 如果安装了 C/C++ Clang Command Adapter 插件，最好不要安装 C++ Intellisense，可能会有冲突？

#### Tag Parser

```json
  // Controls the IntelliSense provider. "Tag Parser" provides "fuzzy" results that are not context-aware. "Default" provides context-aware results. "Disabled" turns off C/C++ language service features.
  "C_Cpp.intelliSenseEngine": "Default",
```

#### global

C++ Intellisense（C++ 智能识别），依赖 gun-global 工具，通过 gtags 来识别符号。
gtags 是一个类似 ctags 的能够创建用于实现索引和自动补全功能所需 tags 的程序。

macOS 下可利用 `brew search global` 查找 GNU global：

```
$ brew search global
==> Formulae
global                                                 homebrew/linuxbrew-core/global

==> Casks
globalmeet                                             globalmeet

$ brew info global
global: stable 6.6.3 (bottled), HEAD
Source code tag system
https://www.gnu.org/software/global/
Not installed
From: https://mirrors.ustc.edu.cn/homebrew-core.git/Formula/global.rb
==> Dependencies
Required: ctags ✔, python ✔
==> Options
--HEAD
	Install HEAD version
```

其依赖的 `ctags` 之前已安装：

```
$ ctags --version
Exuberant Ctags 5.8, Copyright (C) 1996-2009 Darren Hiebert
  Compiled: Sep 17 2017, 20:48:43
  Addresses: <dhiebert@users.sourceforge.net>, http://ctags.sourceforge.net
  Optional compiled features: +wildcards, +regex

$ whereis ctags
/usr/bin/ctags

$ which ctags
/usr/local/bin/ctags

$ brew list | grep 'ctags'
ctags
```

vscode 的 python ctagsPath 配置：

```json
   "python.workspaceSymbols.ctagsPath": "ctags",
```

执行 `brew install global` 安装完成后，执行 `global --version` 查看版本信息，执行 `global -h` 查看说明：

```
~❯ global --version
global (GNU GLOBAL) 6.6.3
Powered by Berkeley DB 1.85.
Copyright (c) 1996-2018 Tama Communications Corporation
License GPLv3+: GNU GPL version 3 or later <http://www.gnu.org/licenses/gpl.html>
This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

~❯ global -h
/usr/local/Cellar/global/6.6.3/libexec/bin/global: invalid option -- 'h'
Usage: global [-adEFGilMnNqrstTvx][-S dir][-e] pattern
       global -c[dFiIMoOPrsT] prefix
       global -f[adlnqrstvx][-L file-list][-S dir] files
       global -g[aEGilMnoOqtvVx][-L file-list][-S dir][-e] pattern [files]
       global -I[ailMnqtvx][-S dir][-e] pattern
       global -P[aEGilMnoOqtvVx][-S dir][-e] pattern
       global -p[qrv]
       global -u[qv]
```

`man gtags` 可以查看 **gtags** 的简介：

```
GTAGS(1)                                                                                 GTAGS(1)

NAME
       gtags - create tag files for global

SYNOPSIS
       gtags [-ciIOqvw][-d tag-file][-f file][dbpath]

DESCRIPTION
       Gtags is used to create tag files for global(1).

       Gtags  recursively collects source files under the current directory, picks up symbols and
       writes the cross-reference data into the tag files ('GTAGS', 'GRTAGS' and 'GPATH').

```

#### config

macOS 平台通过 brew 安装的 `/usr/local/Cellar/global/6.6.3` 默认已在系统环境变量 PATH 中，无需再配置 codegnuglobal.executable。
在 windows 下可能需要独立配置 `codegnuglobal.executable` 路径。

> [codegnuglobal configuration is not available in UserSettings](https://github.com/austin-----/code-gnu-global/issues/33)

可输入执行 `man gtags.conf` 可以查看配置文件帮助：

> 'gtags.conf', '$HOME/.globalrc': Configuration data for GNU GLOBAL. See gtags.conf(5).

#### usage

安装及配置完成后，首次需要进入项目根目录下手动执行 **`gtags`**（--verbose）命令进行符号解析，将生成 `GPATH`、`GTAGS` 和 `GRTAGS` 三个文件：

- `GTAGS`: Tag file for definitions.  
- `GPATH`: Tag file for source files.  
- `GRTAGS`: Tag file for references.  

然后，阅读 C/C++ 代码时，即可执行符号的 定义/实现 以及引用索引跳转。

> 建议将以上3个文件添加到 `.gitignore` 中。

如果代码有改动，需要重新执行 `gtags`/`gtags -i` 或 `global -u` 更新数据库文件。

`ctags -i`（--incremental）：Update tag files incrementally. It's better to use global(1) with the -u  command.  
`global -u`（--update）：Update tag files incrementally. This command internally invokes gtags(1).  

- You can execute this command **anywhere** in the project, differing from gtags(1).

可设置 `codegnuglobal.autoupdate=false` 禁用自动更新。

### [cquery](https://marketplace.visualstudio.com/items?itemName=cquery-project.cquery)

[cquery](https://github.com/cquery-project/cquery) provides extremely fast, robust, and reliable C++ integration into vscode with a ton of features, like code lens, references, code completion, semantic highlighting, and much more.

LSP（Language-Server-Protocol）是微软推出的开源的语言服务器协定，cquery 是基于 LSP 提供索引代码的服务，编辑器（客户端）与服务端进行通信，实现语法补全及各种索引重构等功能。

cquery 使用 Clang 的 C 接口 libclang parse/index 文件。和 YouCompleteMe 等项目一样，cquery 默认下载 prebuilt clang+llvm（即 .h/.a/.so），用户不需要编译完整的 llvm，开发门槛比 clangd 低。

[MaskRay](http://maskray.me/blog/2017-12-03-c++-language-server-cquery) - [cquery 综述](https://www.v2ex.com/t/413308)  
[macOS 上配置 vscode 的 cquery 插件](https://blog.coderzh.com/2018/10/14/cquery/)  

## navigate

如无特殊说明，单列 key(mac) 的情况，windows 与 macOS `cmd` 对应的控制键为 `ctrl`。

### workbench

**标签页导航**：

| key(mac/win)              | command                         | comment                            |
| ------------------------- | ------------------------------- | ---------------------------------- |
| cmd+p/ctrl+p(e)           | workbench.action.quickOpen      | 列举最近历史文件，输入全局搜索文件 |
| alt+cmd+tab/ctrl+k ctrl+p | workbench.action.showAllEditors | 列举已打开tab文件列表(`edt `)      |

**符号列表**：

| key(mac)    | command                         | comment               |
| ----------- | ------------------------------- | --------------------- |
| cmd+t       | workbench.action.showAllSymbols | 全局符号导航(`#`)     |
| shift+cmd+o | workbench.action.gotoSymbol     | 当前文件符号导航(`@`) |

> Xcode 中的 <kbd>⇧</kbd><kbd>⌘</kbd><kbd>o</kbd> 为通用的文件/符号全局导航。  

### symbols

| key(mac)          | command                             | comment                  |
| ----------------- | ----------------------------------- | ------------------------ |
| f12               | editor.action.revealDefinition      | 跳转到定义               |
| cmd+k f12         | editor.action.revealDefinitionAside | 侧边新开tab打开定义      |
| alt+f12           | editor.action.peekDefinition        | 浮窗显示定义             |
| ~~cmd+f12~~       | editor.action.goToImplementation    | 跳转到实现（暂不可用）   |
| ~~shift+cmd+f12~~ | editor.action.peekImplementation    | 浮窗显示实现（暂不可用） |

1. VS 中的 `f12`/`alt+f12` 也为查看定义。  
2. 鼠标悬浮（hover）在符号上，会浮现声明及注释（Quick Info）。  
3. 按下控制键再点击（`cmd+click`/`ctrl+click`）可快捷跳转；增加 `alt` 辅助控制，则在右侧新开分组窗口打开。  

#### Type Definition

应该等同于 `Declaration`，*目前不可用*。

Go to Type Definition | editor.action.goToTypeDefinition  
Peek Type Definition | editor.action.peekTypeDefinition  

#### Implementation

应该等同于 `Definition`，*目前不可用*。

需要满足约束条件 `editorHasImplementationProvider`。

- `cmd+f12`: Go to Implementation  
- `shift+cmd+f12`: Peek Implementation  

| key(mac)      | command                          | comment      |
| ------------- | -------------------------------- | ------------ |
| cmd+f12       | editor.action.goToImplementation | 跳转到实现   |
| shift+cmd+f12 | editor.action.peekImplementation | 浮窗显示实现 |

#### Declaration

Go to Declaration | editor.action.revealDeclaration  
Go to Declaration | editor.action.goToDeclaration  
Peek Declaration | editor.action.peekDeclaration  

editor.action.previewDeclaration  
editor.action.openDeclarationToTheSide  

安装 vscode-cpptools 插件，将引入快捷键：

- `ctrl+f12`: C_Cpp.GoToDeclaration  
- `ctrl+alt+f12`: C_Cpp.PeekDeclaration | Peek Declaration  

> 适用于在函数调用处快捷跳转到头文件声明处。

#### Definition

- `f12`: Go to Definition  
- `cmd+k+f12`: Open Definition to the side  
- `alt+f12`: Peek Definition  

| key(mac)  | command                             | comment             |
| --------- | ----------------------------------- | ------------------- |
| f12       | editor.action.revealDefinition      | 跳转到定义          |
| cmd+k f12 | editor.action.revealDefinitionAside | 侧边新开tab打开声明 |
| alt+f12   | editor.action.peekDefinition        | 浮窗显示定义        |

> 适用于在头文件、函数调用处快捷跳转到定义。

#### References

issues: [Find all references](https://github.com/Microsoft/vscode-cpptools/issues/15)

| key         | command                               | comment         |
| ----------- | ------------------------------------- | --------------- |
| `shift+f12` | editor.action.referenceSearch.trigger | Peek References |

**注意**：when 约束条件 —— `editorHasReferenceProvider`。

1.**editor.action.findReferences**：

| key        | command               | when                                                 |
| ---------- | --------------------- | ---------------------------------------------------- |
| ctrl+enter | openReferenceToSide   | referenceSearchTreeFocused && referenceSearchVisible |
| f4         | goToNextReference     | referenceSearchVisible                               |
| shift+f4   | goToPreviousReference | referenceSearchVisible                               |

2.**references-view**：

vscode 内置安装了 [Reference Search View](https://marketplace.visualstudio.com/items?itemName=ms-vscode.references-view) 插件。
该插件在侧边栏提供独立的 References 图标和视图，还是需要安装配置 ReferenceProvider 提供符号引用搜索引擎（Reference Search Engine）。

命令：`View: Show References` | workbench.view.extension.references-view  
聚焦引用视图：references-view.tree.focus  

`shift+alt+f12`: References: Find All References

| key             | command              | when                       |
| --------------- | -------------------- | -------------------------- |
| `shift+alt+f12` | references-view.find | editorHasReferenceProvider |
| f4              | references-view.next | reference-list.hasResult   |
| shift+f4        | references-view.prev | reference-list.hasResult   |

### C_Cpp

vscode-cpptools 引入的相关快捷键：

| key          | command                  | comment             |
| ------------ | ------------------------ | ------------------- |
| alt+o        | C_Cpp.SwitchHeaderSource | 切换头文件/实现文件 |
| alt+n        | C_Cpp.Navigate           | 当前文件符号导航    |
| ctrl+f12     | C_Cpp.GoToDeclaration    | 跳转到声明          |
| ctrl+alt+f12 | C_Cpp.PeekDeclaration    | 浮窗显示声明        |

1. VS2015 中 ToggleHeaderCodeFile 的快捷键为 `ctrl+k, ctrl+o`，考虑对齐 vscode 和 vax，将暂未占用的 `alt+o` 作为 [Open Corresponding File](https://docs.wholetomato.com/default.asp?W195) 的快捷键。

### [breadcrumbs](https://code.visualstudio.com/updates/v1_26#_breadcrumbs)

| key(mac)    | command                    | comment                            |
| ----------- | -------------------------- | ---------------------------------- |
| shift+cmd+; | breadcrumbs.focus          | 聚焦面包屑导航，左右方向键切换焦点 |
| shift+cmd+. | breadcrumbs.focusAndSelect | 展开面包屑导航                     |
| down/enter  | breadcrumbs.selectFocused  | 选中面包屑项                       |

`⇧⌘.` 相当于 Xcode 的 `^6`，列举当前文件的符号（Show Document Items），且支持即时搜。

参考 VAssistX，考虑将 **`alt+m`** 作为 breadcrumbs.focusAndSelect 的备用快捷键，这将覆盖默认的 extension.minifyJSON 命令。

若 windows 符号列表正常，macOS 下无符号列表，参考 [VSCode Breadcrumbs for C++](https://stackoverflow.com/questions/52208527/vscode-breadcrumbs-for-c)。
