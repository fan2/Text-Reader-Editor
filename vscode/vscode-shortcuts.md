
## viewlet

| key(mac) | command                                  | comment                   |
| -------- | ---------------------------------------- | ------------------------- |
| ctrl+q   | workbench.action.quickOpenView           | Quick Open View           |
| cmd+b    | workbench.action.toggleSidebarVisibility | Toggle Sidebar Visibility |

侧边栏视图切换：

| key(mac)     | command                   | comment                      |
| ------------ | ------------------------- | ---------------------------- |
| shift+cmd+e  | workbench.view.explorer   | Show Explorer / Toggle Focus |
| shift+cmd+f  | workbench.view.search     | Show Search                  |
| ctrl+shift+g | workbench.view.scm        | Show Source Control          |
| shift+cmd+d  | workbench.view.debug      | Show Debug                   |
| shift+cmd+x  | workbench.view.extensions | Show Extensions              |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### EXPLORER

EXPLORER 有一个 OPEN EDITORS 分组，可通过 `cmd+k e` 快速聚焦展开所有已打开的编辑页（包括 GROUPS 和 EDITORS）：

| key(mac) | command                                     | comment                      |
| -------- | ------------------------------------------- | ---------------------------- |
| cmd+k+e  | workbench.files.action.focusOpenEditorsView | 聚焦 EXPLORER - OPEN EDITORS |

考虑分配 `cmd+k+l` 给 outline.focus，快速聚焦展开 EXPLORER - OUTLINE。

## navigate

### groups

在命令面板中输入 `View: Group` 可查看分组相关的操作命令。

#### newGroup

| key   | command                      | comment              |
| ----- | ---------------------------- | -------------------- |
| cmd+\ | workbench.action.splitEditor | 分屏（Split Editor） |

还可以输入 `View: New Editor Group` 命令新建分组：

- View: New Editor Group to the Right(workbench.action.newGroupRight)  
- View: New Editor Group to the Below(workbench.action.newGroupBelow)  

#### navigateEditorGroups

分组之间的导航切换：

| key                | command                                      | comment                          |
| ------------------ | -------------------------------------------- | -------------------------------- |
| cmd+1_8            | focusFirstEditorGroup_focusEighthEditorGroup | 索引定位聚焦 group               |
| cmd+k, cmd+↑/↓/←/→ | workbench.action.focusRightGroup             | 聚焦（Focus Right Editor Group） |
| cmd+k, ↑/↓/←/→     | workbench.action.moveActiveEditorGroupRight  | 移动（Move Editor Group Right）  |

#### editorInGroup

编辑页移动到其他分组（View: Move Editor into Next/Previous Group）：

| key           | command                                    | comment                                      |
| ------------- | ------------------------------------------ | -------------------------------------------- |
| cmd+9         | lastEditorInGroup                          | 定位到当前 group 的最后一个 tab              |
| ctrl+cmd+righ | workbench.action.moveEditorToNextGroup     | 将当前文档移到下一分组，**按需新建第二分组** |
| ctrl+cmd+left | workbench.action.moveEditorToPreviousGroup | 将当前文档移到上一分组                       |

> windows 上与`cmd` 对应的控制键为 `ctrl`，同时出现 `ctrl+cmd` 时，windows 下对应 `ctrl+alt`。

除此之外，还支持将两个或所有分组合并：

- Join Editor Group with Next Group: workbench.action.joinTwoGroups  
- Join All Editor Groups: workbench.action.joinAllGroups  

### tabs

| key(mac/win)              | command                                                | comment                        |
| ------------------------- | ------------------------------------------------------ | ------------------------------ |
| alt+cmd+tab/ctrl+k ctrl+p | workbench.action.showAllEditors                        | 列举已打开tab文件列表(`edt `)  |
| ctrl+tab                  | workbench.action.openNextRecentlyUsedEditorInGroup     | 快速切换最近打开的文件         |
| ctrl+shift+tab            | workbench.action.openPreviousRecentlyUsedEditorInGroup | 快速切换最近打开的文件（逆序） |
| ctrl+1_9/alt+1_9          | workbench.action.openEditorAtIndex1~9                  | 索引定位 tab                   |
| shift+cmd+[;alt+cmd+left  | workbench.action.previousEditor                        | win: ctrl+PageUp               |
| shift+cmd+];alt+cmd+right | workbench.action.nextEditor                            | win: ctrl+PageDown             |

windows 下的 `ctrl+shift+[`/`ctrl+shift+]` 为 Fold/Unfold；`ctrl+alt+left`/`ctrl+alt+right` 移动编辑页到前/后一个分组。

以下复合快捷键支持将文件标签页左右移动交换位置：

| key(mac/win)          | command                                 | comment           |
| --------------------- | --------------------------------------- | ----------------- |
| cmd+k shift+cmd+left  | workbench.action.moveEditorLeftInGroup  | Move Editor Left  |
| cmd+k shift+cmd+right | workbench.action.moveEditorRightInGroup | Move Editor Right |

### EP

编辑点（Edit Points）导航：

| key(mac/win)              | command                                     | comment           |
| ------------------------- | ------------------------------------------- | ----------------- |
| ctrl+g                    | workbench.action.gotoLine                   | 跳转到指定行(`:`) |
| ctrl+-/alt+left           | workbench.action.navigateBack               | 回溯上一个编辑点  |
| ctrl+shift+-/alt+right    | workbench.action.navigateForward            | 跳转下一个编辑点  |
| cmd+k cmd+q/ctrl+k ctrl+q | workbench.action.navigateToLastEditLocation | 返回最近编辑点    |

> VS 中的 `ctrl+-`/`ctrl+shift+-` 也是导航编辑点，但在 Windows/vscode 中为缩小、放大视图，建议增加覆盖调整为导航编辑点。  

## track active

### revealFileInOS（已有）

打开当前文件在 macOS/Windows 的资源管理器（Finder/Explorer）中的位置。

`alt+cmd+r`（`shift+alt+r`）：revealFileInOS

```json
{
    "key": "alt+cmd+r",
    "command": "revealFileInOS",
    "when": "!editorFocus"
},
```

> 由于命中条件为编辑器非聚焦时，较难触发。

以下快捷键，没有 when 条件约束，全局命中，更实用：

`cmd+k,r` (`ctrl+k,r`): revealActiveFileInWindows

```json
    {
        "key": "cmd+k r",
        "command": "workbench.action.files.revealActiveFileInWindows"
    },
```

### showActiveFileInExplorer

参照 Xcode，新增快捷键以便快速在侧边栏浏览器中定位当前活跃文档：

```json
    {
        "key": "shift+cmd+j", // ctrl+shift+j for Windows
        "command": "workbench.files.action.showActiveFileInExplorer",
        "when": "editorTextFocus"
    },
```

当聚焦全局搜索时（searchViewletVisible），`shift+cmd+j` 默认用于展开搜索详情（Toggle Search details），以便指定 files to inclue/exclude：

```json
    {
        "key": "shift+cmd+j",
        "command": "workbench.action.search.toggleQueryDetails",
        "when": "searchViewletVisible"
    },
```

### misc

复制当前文件路径：

| key(mac)         | command                                     | comment                  |
| ---------------- | ------------------------------------------- | ------------------------ |
| cmd+k p/ctrl+k p | workbench.action.files.copyPathOfActiveFile | Copy path of active file |

## line

### Comment/Delete

| key(mac)    | command                         | comment             |
| ----------- | ------------------------------- | ------------------- |
| cmd+/       | editor.action.commentLine       | Toggle Line Çomment |
| cmd+k cmd+c | editor.action.addCommentLine    | Add Line Comment    |
| cmd+k cmd+u | editor.action.removeCommentLine | Remove Line Comment |
| shift+cmd+k | delete line                     | Delete Line         |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### Indent

| key(mac) | command                    | comment      |
| -------- | -------------------------- | ------------ |
| cmd+]    | editor.action.indentLines  | Indent Line  |
| cmd+[    | editor.action.outdentLines | Outdent Line |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### Insert

| key(mac)        | command                        | comment           |
| --------------- | ------------------------------ | ----------------- |
| cmd+enter       | editor.action.insertLineAfter  | Insert Line Below |
| shift+cmd+enter | editor.action.insertLineBefore | Insert Line Above |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### Move

| key            | command                           | comment        |
| -------------- | --------------------------------- | -------------- |
| alt+down       | editor.action.moveLinesDownAction | Move Line Down |
| alt+up         | editor.action.moveLinesUpAction   | Move Line Up   |
| shift+alt+down | editor.action.copyLinesDownAction | Copy Line Down |
| shift+alt+up   | editor.action.copyLinesUpAction   | Copy Line Up   |

## find

### global

| key(mac)    | command                      | comment               |
| ----------- | ---------------------------- | --------------------- |
| shift+cmd+f | workbench.action.findInFiles | Search: Find in Files |
| shift+alt+f | filesExplorer.findInFolder   | 被格式化占用？        |

新增分配：`shift+alt+cmd+f` for filesExplorer.findInWorkspace

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### local

| key(mac)     | command                                        | comment             |
| ------------ | ---------------------------------------------- | ------------------- |
| cmd+f        | actions.find                                   | Find                |
| f3           | editor.action.nextMatchFindAction              | Find Next           |
| shift+f3     | editor.action.previousMatchFindAction          | Find Previous       |
| cmd+f3       | editor.action.nextSelectionMatchFindAction     | Find Next Selection |
| shift+cmd+f3 | editor.action.previousSelectionMatchFindAction | Find Next Selection |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

`alt+enter`：Select All Occurrences of Find Match（editor.action.selectAllMatches）

## selection

### expandSelection

| key(mac)    | command                                   | comment                              |
| ----------- | ----------------------------------------- | ------------------------------------ |
| cmd+l       | expandLineSelection                       | Expand Selection to Line             |
| cmd+d       | editor.action.addSelectionToNextFindMatch | Add Next Occurrence                  |
| shift+cmd+l | editor.action.selectHighlights            | Select All Occurrences of Find Match |

> windows 上与`cmd` 对应的控制键为 `ctrl`。

### ColumnSelect

| key(mac/win)                | command                         | comment                      |
| --------------------------- | ------------------------------- | ---------------------------- |
| alt+cmd+down/shift+alt+down | editor.action.insertCursorBelow | Add Cursor Below（向下列增） |
| alt+cmd+up/shift+alt+up     | editor.action.insertCursorAbove | Add Cursor Above（向上列增） |
| shift+alt+cmd+down          | cursorColumnSelectDown          | 向下列块扩选                 |
| shift+alt+cmd+up            | cursorColumnSelectUp            | 向上列块扩选                 |

### selectToBracket

`shift+cmd+\\`（`ctrl+shift+\\`）：支持括号跳转（jumpToBracket）

```json
{
    "key": "shift+cmd+\\", //  for Windows
    "command": "editor.action.jumpToBracket",
    "when": "editorTextFocus"
},
```

增加 `alt` 支持匹配括号块选：

```json
    // editor
    {
        "key": "shift+alt+cmd+\\", // ctrl+shift+alt+\\ for Windows
        "command": "editor.action.selectToBracket",
        "when": "editorTextFocus"
    },
```

彩虹括号插件 Expand Bracket Selection 命令: bracket-pair-colorizer.expandBracketSelection

## misc

### Fold

| key(mac/win)           | command                       | comment                            |
| ---------------------- | ----------------------------- | ---------------------------------- |
| alt+cmd+[/ctrl+shift+[ | editor.fold                   | Fold (collapse) region             |
| alt+cmd+]/ctrl+shift+] | editor.unfold                 | Unfold (uncollapse) region         |
| cmd+k cmd+[            | editor.foldRecursively        | Fold (collapse) all subregions     |
| cmd+k cmd+]            | editor.unfoldRecursively      | Unfold (uncollapse) all subregions |
| cmd+k cmd+0            | editor.foldAll                | Fold (collapse) all regions        |
| cmd+k cmd+1_7          | editor.foldLevel1_7           | Fold Level 1_7                     |
| cmd+k cmd+j            | editor.unfoldAll              | Unfold (uncollapse) all regions    |
| cmd+k cmd+8            | editor.foldAllMarkerRegions   |
| cmd+k cmd+9            | editor.unfoldAllMarkerRegions |

更多请打开 Keyboard Shortcuts 列表中搜索 `Fold`（Fold All, Fold Level）和 `Unfold` 等关键字。

### format

| key(mac)    | command                       | comment          |
| ----------- | ----------------------------- | ---------------- |
| shift+alt+f | editor.action.formatDocument  | Format Document  |
| cmd+k cmd+f | editor.action.formatSelection | Format Selection |

### zen mode

| key(mac) | command                        | comment      |
| -------- | ------------------------------ | ------------ |
| cmd+k z  | workbench.action.toggleZenMode | 开启禅写模式 |
| esc esc  | workbench.action.exitZenMode   | 退出禅写模式 |

## macOS

### WindowTab navigation

macOS 支持 `window.nativeTabs`，支持以 tab 形式打开多窗口。

- `ctrl+w`: workbench.action.switchWindow，列出已打开窗口列表。  

增加以下快捷键用于 WindowTab 切换导航：

```json
    // workbench
    {
        "key": "ctrl+shift+cmd+]",
        "command": "workbench.action.showNextWindowTab"
    },
    {
        "key": "ctrl+shift+cmd+[",
        "command": "workbench.action.showPreviousWindowTab"
    },
```

### findInFile

macOS 下的通用查找：`cmd+e` 基于选择查找，再用 `cmd+g`/`shift+cmd+g` 上下查找。

| key(mac/win) | command                               | comment             |
| ------------ | ------------------------------------- | ------------------- |
| cmd+e        | actions.findWithSelection             | Find With Selection |
| cmd+g        | editor.action.nextMatchFindAction     | Find Next           |
| shift+cmd+g  | editor.action.previousMatchFindAction | Find Previous       |
