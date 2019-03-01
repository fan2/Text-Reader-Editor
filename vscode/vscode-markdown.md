[TOC]

<!-- TOC -->

## markdown basics

### bold

`**BOLD**`：**BOLD**

### italic

`*italic*`：*italic*

### strikethrough

`~~strikethrough~~`：~~strikethrough~~

### hyperlink

`[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)
`:

[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

### image

`![vs-code](https://docs.microsoft.com/en-us/visualstudio/liveshare/media/vs-code.svg)`:

![vs-code](https://docs.microsoft.com/en-us/visualstudio/liveshare/media/vs-code.svg)

### inline code

\`inline code\`：`inline code`

### code block

javascript 代码示例：

\`\`\`javascript
javascript codeblock
\`\`\`

```javascript
var http = require('http');

console.log('create http server by javascript!');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World!');
}).listen(8080);
```

python 代码示例：

\`\`\`python
python codeblock
\`\`\`

```python
# main entry
if __name__ == '__main__':
    print('This program is being run by itself')
    if len(sys.argv) < 2:
        print('please input module name')
    else:
        main(sys.argv[1:])
else:
    print('I am being imported from another module')
```

### bullet points

[marketplace](https://marketplace.visualstudio.com/) categories

- Featured  
- Trending  
- [Most Popular](https://marketplace.visualstudio.com/search?sortBy=Downloads&category=All%20categories&target=VSCode)  
- [Recently Added](https://marketplace.visualstudio.com/search?sortBy=PublishedDate&category=All%20categories&target=VSCode)  

### number list

Most Popular Extensions in marketplace:

1. Python  
2. C/C++  
3. Debugger for Chrome  
4. ESLint  
5. vscode-icons  
6. C#  

### checkboxes

`- [ ]`: unchecked  
`- [x]`: checked  

some preferences of User Settings:

- [x] "editor.wordWrap": "on",
- [x] "terminal.integrated.cursorBlinking": true,
- [x] "gitlens.historyExplorer.enabled": true,
- [ ] "sync.autoDownload": false,
- [ ] "sync.autoUpload": false,
- [x] "powermode.enabled": true,

> 默认的 preview 不支持列选框，可安装 MPE（Markdown Preview Enhanced）插件支持。

## Markdown Editor Enhanced

### [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

| Key               | Command                      |
| ----------------- | ---------------------------- |
| Ctrl + B          | Toggle bold                  |
| Ctrl + I          | Toggle italic                |
| Alt + S           | Toggle strikethrough         |
| Ctrl + Shift + ]  | Toggle heading (uplevel)     |
| Ctrl + Shift + [  | Toggle heading (downlevel)   |
| Ctrl + M          | Toggle math environment      |
| Alt + C           | Check/Uncheck task list item |

- <kbd>⌘</kbd><kbd>B</kbd> : Toggle **bold**  
- <kbd>⌘</kbd><kbd>I</kbd> : Toggle *italic*  
- <kbd>⌥</kbd><kbd>S</kbd> : Toggle ~~strikethrough~~  
- <kbd>^</kbd><kbd>⇧</kbd><kbd>[</kbd> / <kbd>^</kbd><kbd>⇧</kbd><kbd>]</kbd>：increase/decrease level of heading
- <kbd>⌥</kbd><kbd>C</kbd> : 对任务列表行（`- [ ] item`）进行选中或反选  
- **<kbd>⌥</kbd><kbd>⇧</kbd><kbd>F</kbd>** : 对选中的表格进行排版对齐优化（Table Formatter）  

安装 Markdown All in One 插件后，在 EXPLORER 侧边栏中将多出 **OUTLINE** 分组，显示文档大纲（TOC）。

由于已安装 MPE 预览加强插件替换 vscode 自带的 Markdown 预览器，因此移除以下两个 togglePreview 快捷键：

```json
{
  "key": "ctrl+k v",
  "command": "markdown.extension.togglePreviewToSide",
  "when": "!terminalFocus"
}

{
  "key": "ctrl+shift+v",
  "command": "markdown.extension.togglePreview",
  "when": "!terminalFocus"
}
```

> 如果不移除 "ctrl+k v"，则默认的 Emacs 风格快捷操作 Delete All Right 将不可用。

### [Markdown Shortcuts](https://marketplace.visualstudio.com/items?itemName=mdickin.markdown-shortcuts)

Context and title menu integration:

![vscode-Markdown_Shortcuts-Context_Menu](./images/vscode-markdown_shortcuts-context_menu.png)

> 同类插件：Markdown helper

| Name                            | Description                                      | Default key binding  |
| ------------------------------- | ------------------------------------------------ | -------------------- |
| md-shortcut.showCommandPalette  | Display all commands                             | ctrl+M ctrl+M        |
| md-shortcut.toggleBold          | Make **bold**                                    | ctrl+B               |
| md-shortcut.toggleItalic        | Make _italic_                                    | ctrl+I               |
| md-shortcut.toggleStrikethrough | Make ~~strikethrough~~                           | ⌥S(MAO)             |
| md-shortcut.toggleHyperlink     | Make [a hyperlink](https://www.sogo.com)         | ctrl+L               |
| md-shortcut.toggleImage         | Make an image `![](image_url.png)`               | ctrl+shift+L         |
| md-shortcut.toggleCodeBlock     | Make ```a code block```                          | ctrl+M ctrl+C        |
| md-shortcut.toggleInlineCode    | Make `inline code`                               | ctrl+M ctrl+I        |
| md-shortcut.toggleBullets       | Make * bullet point                              | ctrl+M ctrl+B        |
| md-shortcut.toggleNumbers       | Make 1. numbered list                            | ctrl+M ctrl+1        |
| md-shortcut.toggleCheckboxes    | Make - [ ] check list (Github flavored markdown) | ctrl+M ctrl+X        |
| md-shortcut.toggleTitleH1       | Toggle # H1 title                                | ^⇧1(map)             |
| md-shortcut.toggleTitleH2       | Toggle ## H2 title                               | ^⇧2(map)             |
| md-shortcut.toggleTitleH3       | Toggle ### H3 title                              | ^⇧3(map)             |
| md-shortcut.toggleTitleH4       | Toggle #### H4 title                             | ^⇧4(map)             |
| md-shortcut.toggleTitleH5       | Toggle ##### H5 title                            | ^⇧5(map)             |
| md-shortcut.toggleTitleH6       | Toggle ###### H6 title                           | ^⇧6(map)             |
| md-shortcut.addTable            | Add Tabular values                               |                      |
| md-shortcut.addTableWithHeader  | Add Tabular values with header                   |                      |

开启了 Sublime Text Keymap 插件后，"ctrl+m" 默认映射为操作 "editor.action.jumpToBracket"，因此这里所有以 <kbd>^</kbd><kbd>M</kbd> 作为前导的快捷键组合都无效，可适当调整。

> toggleTitle 相关快捷键配置参考下面的 keybindings。

### keybindings map to FoldingText

#### 标题等级

维持 <kbd>^</kbd><kbd>⇧</kbd><kbd>[</kbd> / <kbd>^</kbd><kbd>⇧</kbd><kbd>]</kbd> 为 Markdown All in One 的增加/减少标题等级快捷键，因为 `shift+command+[/]` 组合在 macOS(vscode) 为通用的左右 tab 切换。

FoldingText 下设置标题等级的快捷键为 `⌘1` ~ `⌘6`，此为 macOS(vscode) 下按 tab 索引定位切换文件的通用功能快捷键，不宜替换。

参考 Markdown All in One 的 increase/decrease level of heading 快捷键，可为 `md-shortcut.toggleTitleH1 ~ 6` 分配相同前导符的快捷键：<kbd>^</kbd><kbd>⇧</kbd><kbd>1</kbd> ~ <kbd>^</kbd><kbd>⇧</kbd><kbd>6</kbd>。

其中 <kbd>^</kbd><kbd>⇧</kbd><kbd>5</kbd> 在聚焦内置终端时为分割终端的快捷键：

```json
{
  "key": "ctrl+shift+5",
  "command": "workbench.action.terminal.split",
  "when": "terminalFocus"
}
```

修改 `~/Library/Application Support/Code/User/keybindings.json`，设置唤起条件 when：

```json
    {
        "key": "ctrl+shift+1",
        "command": "md-shortcut.toggleTitleH1",
        "when": "editorTextFocus && editorLangId == 'markdown'"
    },
```

#### 粗斜删

在 Keyboard Shortcuts 中右键 Remove Keybindings 删除 `md-shortcut.toggleBold` 和 `md-shortcut.toggleItalic` 这两个快捷键，
采用 Markdown All in One 的 粗体、斜体 和 删除线 快捷键，前两个快捷键同 FoldingText。

#### 超链接

FoldingText 中插入超链接的快捷键组合为 `command+K`（<kbd>⌘</kbd><kbd>K</kbd>）。在 vscode 中编辑 Markdown 文件（`"editorLangId == 'markdown'"`）时，`cmd+K` 为 "markdown.showPreviewToSide" 快捷键（"cmd+k v"）的前导，不宜替换。

```json
{
  "key": "cmd+k v",
  "command": "markdown.showPreviewToSide",
  "when": "editorLangId == 'markdown'"
}
```

采用默认的 Markdown Shortcuts：

`md-shortcut.toggleHyperlink` : - <kbd>^</kbd><kbd>L</kbd>  
`md-shortcut.toggleImage` : - <kbd>^</kbd><kbd>⇧</kbd><kbd>L</kbd>  

#### 代码（块）

FoldingText 中插入 Inline Code 的快捷键组合为 `shift+command+C`（<kbd>⇧</kbd><kbd>⌘</kbd><kbd>C</kbd>）

在 vscode 的 Keyboard Shortcuts 中输入 `Shift+Command+C` 可准确搜索出是哪个功能占用了此快捷键:

```json
{
  "key": "shift+cmd+c",
  "command": "workbench.action.terminal.openNativeConsole",
  "when": "!terminalFocus"
}
```

在 vscode 中，<kbd>⇧</kbd><kbd>⌘</kbd><kbd>C</kbd> 快捷键组合将调起终端并cd到该工程目录。这里也将其设置为 `md-shortcut.toggleInlineCode` 的快捷键：

```json
{
  "key": "shift+cmd+c",
  "command": "md-shortcut.toggleInlineCode",
  "when": "editorTextFocus && editorLangId == 'markdown'"
}
```

> 由于其唤起条件约束（when）更具体为编辑 Markdown 文件时，因此不会影响其他需要调起终端的场景体验。

延续上述设置，可将 `md-shortcut.toggleCodeBlock` 操作的快捷键修改为 <kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>C</kbd>。

#### 列表

修改无序列表和有序列表的快捷键，对齐 FoldingText：

* `md-shortcut.toggleBullets` : <kbd>⌘</kbd><kbd>L</kbd>  
* `md-shortcut.toggleNumbers` : <kbd>⇧</kbd><kbd>⌘</kbd><kbd>L</kbd>  

由于其唤起条件约束（when）更具体为编辑 Markdown 文件时（"editorTextFocus && editorLangId == 'markdown'"），且默认的 `cmd+l` 对应 expandLineSelection 操作在 Markdown 编辑时不太常用，故没啥影响。

延续上述设置，可将 `md-shortcut.toggleCheckboxes` 操作的快捷键修改为 <kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>L</kbd>。

> 默认的 ctrl+M 前导快捷键依旧可用。

### table

### CriticMarkup

MPE 支持用 `==highlight==` 高亮文字。

开启配置 "markdown-preview-enhanced.enableCriticMarkupSyntax" 之后，MPE 还支持 [CriticMarkup](http://criticmarkup.com/users-guide.php)：

```
{>>Comment<<}   // 不可见
{==highlight==}
{>>highlight<<} // ?
{++Addition++}
{--Deletion--}
{~~~> Substitution~~}
```

## [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)

| Shortcuts         | Functionality      |
| ----------------- | ------------------ |
| cmd-k v           | Open preview       |
| esc               | Toggle sidebar TOC |

> 由于每次按下 <kbd>⌘</kbd><kbd>K</kbd> 再按下 <kbd>V</kbd> 总是在当前光标处输入一个字母 `v`，键快捷键调整为 **<kbd>⌘</kbd><kbd>K</kbd>**+**<kbd>⌘</kbd><kbd>V</kbd>** 更合理。

MPE 插件已经支持数学公式、导出PDF，流程图和示意图等功能，无需再额外安装 TOC、Math、PDF 等插件。

> Markdown Preview Enhanced uses [KaTeX](https://github.com/Khan/KaTeX) or [MathJax](https://github.com/mathjax/MathJax) to render math expressions.

### [PDF export](https://shd101wyy.github.io/markdown-preview-enhanced/#/pdf?id=pdf-export)

可不用装其他 PDF 导出插件，直接右键 `Open in Browser` 在浏览器中打印导出 PDF。  

也可安装 **Puppeteer** 和 PhantomJS，支持导出三种格式：

  - PDF  
  - PNG  
  - JPEG  

1. [Chrome (Puppeteer) export](https://shd101wyy.github.io/markdown-preview-enhanced/#/puppeteer?id=chrome-puppeteer-export)

  > 需先执行 `npm install -g puppeteer` 安装 puppeteer。

2. [PhantomJS Export](https://shd101wyy.github.io/markdown-preview-enhanced/#/phantomjs?id=phantomjs-export)

  > 需要先执行 `brew install phantomjs` 安装 phantomjs。
