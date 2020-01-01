[Key Bindings for Visual Studio Code](https://code.visualstudio.com/docs/getstarted/keybindings)

- [keyboard-shortcuts-macos](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)  
- [keyboard-shortcuts-windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)  

[Visual Studio Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vs-keybindings)

**`Chords`** (two separate keypress actions) are described by separating the two keypresses with a space. For example, `Ctrl+K Ctrl+S`.

## shortcuts

- `ctrl+q`: workbench.action.quickOpenView，左侧视图窗口快速切换。  
- `alt+cmd+tab`(`ctrl+k, ctrl+p`): workbench.action.showAllEditors，列举已打开tab文件列表。  

### find & selection

`cmd+d`: Add Next Occurrence(addSelectionToNextFindMatch)  
`shift+cmd+l`: Select all Occurrences(selectHighlights)  

## rules

The keyboard shortcuts dispatching is done by analyzing a list of rules that are expressed in JSON.

Each rule consists of:

- a `key` that describes the pressed keys.  
- a `command` containing the identifier of the command to execute.  
- an *optional* `when` clause containing a boolean expression that will be evaluated depending on the current context.  

没有 `when` 条件约束的为 Global keybindings。

## context

'when' clause contexts

### OS

| Context name | True when                   |
| ------------ | --------------------------- |
| isLinux      | True when the OS is Linux   |
| isMac        | True when the OS is macOS   |
| isWindows    | True when the OS is Windows |

如果日常同时使用 macOS 和 Windows，采用 [Syncing](https://marketplace.visualstudio.com/items?itemName=nonoroazoro.syncing) 进行配置云备份，快捷键将按 `MacOS` 和 `non-MacOS` 区分上传同步。若采用 [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) 进行配置云备份，没有区分平台，所有操作系统上的 vscode 的设置和快捷键都同步上传到同一份云端 gist 备份。
可以通过以上条件，定制不同系统的特有快捷键，这样多系统的 keybindings 备份和同步就不会混乱。

### Focus

| Context name    | True when                                                |
| --------------- | -------------------------------------------------------- |
| sidebarVisible  | Side Bar is displayed.                                   |
| sideBarFocus    | Side Bar has focus.                                      |
| editorFocus     | An editor has focus, either the text or a widget.        |
| editorTextFocus | The text in an editor has focus (cursor is blinking).    |
| textInputFocus  | Any editor has focus (regular editor, debug REPL, etc.). |
| inputFocus      | Any text input area has focus (editors or text boxes).   |
| terminalFocus   | An integrated terminal has focus.                        |

常用的焦点约束条件是 **editorTextFocus** 和 **terminalFocus**。

### LangId

| Context name    | True when                                                                                         |
| --------------- | ------------------------------------------------------------------------------------------------- |
| editorReadOnly  | The editor is read only.                                                                          |
| editorLangId    | True when the editor's associated language Id matches. Example: "editorLangId == typescript".     |
| resourceLangId  | True when the Explorer or editor title language Id matches. Example: "resourceLangId == markdown" |
| resourceExtname | True when the Explorer or editor filename extension matches. Example: "resourceExtname == .js"    |

常用的约束条件文件的可写性 **editorReadOnly** 和语法类型 **editorLangId**。

### Selection

| Context name                | True when                                                 |
| --------------------------- | --------------------------------------------------------- |
| editorHasSelection          | Text is selected in the editor.                           |
| editorHasMultipleSelections | Multiple regions of text are selected (multiple cursors). |

常用 **editorHasSelection** 来针对有选择内容才进行操作。

## removing

add a `-` to the `command` and the rule will be a removal rule.

在 [1.32.1](https://code.visualstudio.com/updates/v1_32) 版本之前，vscode 将 cmd+i/ctrl+i 作为 expandLineSelection 的快捷键，将其修改为 `cmd+l`（`ctrl+l` for windows）更合理。

替换修改的方法是屏蔽旧的，启用新的：

```json
    {
        "key": "cmd+i",
        "command": "-expandLineSelection",
        "when": "textInputFocus"
    },
    {
        "key": "cmd+l",
        "command": "expandLineSelection",
        "when": "textInputFocus"
    },
```
