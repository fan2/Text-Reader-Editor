## command-palette

View | Command Palette（`⇧⌘P`）呼起命令面板：

### Configure Language

Command Palette: `Configure Language` 打开语言配置文件 `locale.json`，

```json
    "locale":"en" // 英文
```

可修改为 `"locale":"zh-cn"`，设置默认语言为中文。

> [Display Language](https://code.visualstudio.com/docs/getstarted/locales)  
> [How to change UI language in Visual Studio Code?](https://stackoverflow.com/questions/36868322/how-to-change-ui-language-in-visual-studio-code)  

### [Change language mode](https://code.visualstudio.com/docs/getstarted/tips-and-tricks#_change-language-mode)

Command Palette: `Change Language Mode` 设置当前文件的编程语言，类似 Sublime Text 的 `Set Syntax: ` 设置。

> [Programming Languages](https://code.visualstudio.com/docs/languages/overview)

## [command-line](https://code.visualstudio.com/docs/getstarted/tips-and-tricks#_command-line)

[Visual Studio Code Tips and Tricks](https://code.visualstudio.com/docs/getstarted/tips-and-tricks#vscode)

### commands

```shell
# see help options
## 等价于 code -h
code --help

# open code
code

# open code with current directory
code .

# open the current directory in the most recently used code window
code -r .

# create a new window
code -n

# change the language
code --locale=es

# open diff editor
code --diff <file1> <file2>

# open file at specific line and column <file:line[:character]>
code --goto package.json:10:5
```

可启用 zsh 默认自带的 `vscode` 插件，支持以下简化命令：

- **`vsc`**：相当于 `code .`，新开 vscode 窗口打开当前工作目录。  
- **`vscn`**：相当于 `code -n`，新开 vscode 窗口，其后可接 `.`、`file` 或 `folder`。  
- **`vscr`**：相当于 `code -r`，复用（覆盖）最后一个活跃窗口，其后可接 `.`、`file` 或 `folder`。  
- **`vscd`**：相当于 `code -d`，在最后一个活跃窗口打开文件对比。  

### Extensions Management

```shell
# Set the root path for extensions
--extensions-dir <dir>

# List the installed extensions.
--list-extensions

# Show versions of installed extensions, when using --list-extension.
--show-versions

# Installs an extension.
--install-extension (<extension-id> | <extension-vsix-path>)

# Uninstalls an extension.
--uninstall-extension (<extension-id> | <extension-vsix-path>)

# disable all extensions
code --disable-extensions .
```

列举插件及其版本号：`code --list-extensions --show-versions`  
列举插件数量（包括禁用的）：`code --list-extensions --show-versions | wc -l`  
