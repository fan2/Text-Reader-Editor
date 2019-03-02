
由于已安装 MPE 预览加强插件替换 vscode 自带的 Markdown 预览器，因此移除以下两个 togglePreview 快捷键：

## common

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

参照 Xcode，新增快捷键以便快速在侧边栏浏览器中定位当前文档：

```json
    {
        "key": "shift+cmd+j", // ctrl+shift+j for Windows
        "command": "workbench.files.action.showActiveFileInExplorer"
    },
```

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

## macOS

### WindowTab navigation

macOS 支持 `window.nativeTabs`，支持以 tab 形式打开多窗口，增加以下快捷键用于 WindowTab 切换导航：

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
