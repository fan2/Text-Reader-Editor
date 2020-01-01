
# Git

## [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)（❤️）

GitLens — Git supercharged

> GitLens supercharges the Git capabilities built into Visual Studio Code. It helps you to visualize code authorship at a glance via Git blame annotations and code lens, seamlessly navigate and explore Git repositories, gain valuable insights via powerful comparison commands, and so much more.

启用 GitLens 插件后，如果打开的工程是 git 版本控制，则 SCM 视图（`Source Control View`）将会显示当前 SOURCE CONTROL PROVIDERS 为 GIT。
下面针对工程的版本信息有 CHANGES，可配置显示：

- GitLens: Compare,  
- GitLens: File History， 
- GitLens: Search Commits。  

同时，左侧边栏中会有一个 `GitLens` 节点图标，其中包含 REPOSITORIES 信息，包括 Branches、Remotes、Stashes 和 Tags。

[強大的 Git Extension: GitLens ](https://medium.com/@aar0nTw/%E5%BC%B7%E5%A4%A7%E7%9A%84-git-extension-gitlens-vs-code-extension-how-to-editor-%E7%B7%A8%E8%BC%AF%E8%80%85-5-e1800d9d87bc)

## Git History

GitLens 默认自带了 File History 和 Line History，以下两个 Git History 插件可选。

[Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)

View git log, file history, compare branches or commits.

[Git History Diff](https://marketplace.visualstudio.com/items?itemName=huizhou.githd)

- View git history.  
- View commit details.  
- View diff of committed files.  
- View git blame info.  
- View stash details.  

# subversion

[在Visual Studio Code环境中使用SVN的方案之一](https://blog.csdn.net/VingsOfLiberty/article/details/81130968)

## [TortoiseSVN](https://marketplace.visualstudio.com/items?itemName=fantasytyx.tortoise-svn)

fantasytyx.tortoise-svn

*only* for Windows with TortoiseSVN

Windows 下可以通过命令调起 TortoiseSVN。

命令：

1. `Workspace: SVN *`;  
2. `File: SVN *`;  

> 建议采用 Windows/macOS 下通用的 SVN 插件。

## [SVN](https://marketplace.visualstudio.com/items?itemName=johnstoncode.svn-scm)（❤️）

Integrated Subversion source control for VS Code

### config

**Note**: This extension leverages your machine's SVN installation, so you need to install SVN first.

VSCode 的 **`svn.path`** 配置项默认为 null。

macOS 下的 `which svn` 为 `/usr/bin/svn`，默认在系统环境变量 PATH 中，无需额外配置。  
Windows 安装 TortoiseSVN 时如果是默认路径，则 `C:\Program Files\TortoiseSVN\bin` 一般默认被配置到系统环境变量 PATH 中，也无需额外配置。  

> Windows Cmd 通过 `echo %path%`，PowerShell 通过 `$env:Path` 或 `(type env:path) -split ';'` 可查看确认。

### commands

控制面板中输入 **`SVN: `** 可查看 svn 功能命令簇。

### Source Control

启用 SVN 插件后，如果打开的工程是 svn 版本控制，则 SCM 视图（`Source Control View`）将会显示当前 SOURCE CONTROL PROVIDERS 为 SVN。
下面针对工程的 SVN 版本信息有 Penging Changes，右键可针对变更文件做更多操作。

同时，左侧边栏中会有一个 `Subversion` 节点图标，其中包含 REPOSITORIES 和当前打开文件的 FILE HISTORY。

### Experimental

`vim /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/product.json` 编辑，`extensionAllowedProposedApi` 追加 **`johnstoncode.svn-scm`**：

```
      "extensionAllowedProposedApi": [
          "ms-vscode.references-view",
          "ms-vsliveshare.vsliveshare",
          "GitHub.vscode-pull-request-github",
          "johnstoncode.svn-scm"
      ],
```

重启 vscode 后，文件浏览器中有修改的文件名后有 svn 修改标记（SVN Status in File Explorer）。

### 其他功能

`Quick Diffs in gutter`：改动的代码行的 gutter 处有红色标记，点击可以快速打开变更对比。

**`Diff changes`**：

- Quick Diffs in gutter；  
- 或 SCM 浏览视图中点击打开 diff（with HEAD）；  
- 或 命令 `SVN: Open Changes with HEAD`；  

**`Revert edits`**：

- gutter 快速 diff 点击 `Revert Change` 按钮；  
- 或 SCM 浏览视图右键 `Revert Selected File`；  
- 或 命令 `SVN: Revert Selected File`/`SVN: Revert Selected Ranges`。  

`Create changelists`：创建变更集，类似 git 的 stage？  

> 文件浏览视图和 SCM 视图 右键有 `Set changelist` 命令。

`Commit changes/changelists`：提交（commit）或提交变更集（stages）。  

## [SVN Gutter](https://marketplace.visualstudio.com/items?itemName=beaugust.blamer-vs)（可选）

Visually blame SVN-stored code line-by-line

控制面板中将新增以下两条命令：

1. `SVN Gutter - Show Blame`: Adds icons to gutter with tooltips containing information from each revision  
2. `SVN Gutter - Clear Blame`: Clears icons and tooltips  

开启 Blame Gutter 点后，鼠标悬浮代码，可查看该行的 blame（最后一次被谁改动），有点类似 GitLens。

## [SVN Changes](https://marketplace.visualstudio.com/items?itemName=eliean.vscode-svn)（可选）

Integrates SVN into VS Code. Show list of files that are modified in local copy.

点击左侧边栏右下角的 `3 changes` 按钮，可在 Output 中输出当前 WC 的改动文件列表。
