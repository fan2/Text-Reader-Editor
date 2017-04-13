
## Color Scheme

### Color Scheme - Default

➜  Color Scheme - Default  pwd
/Users/faner/Library/Application Support/Sublime Text 3/Cache/Color Scheme - Default
➜  Color Scheme - Default  tree -L 1
.
├── All\ Hallow's\ Eve.tmTheme.cache
├── Amy.tmTheme.cache
├── Blackboard.tmTheme.cache
├── Cobalt.tmTheme.cache
├── Dawn.tmTheme.cache
├── Eiffel.tmTheme.cache
├── Espresso\ Libre.tmTheme.cache
├── IDLE.tmTheme.cache
├── LAZY.tmTheme.cache
├── Mac\ Classic.tmTheme.cache
├── MagicWB\ (Amiga).tmTheme.cache
├── Monokai\ Bright.tmTheme.cache
├── Monokai.tmTheme.cache
├── Pastels\ on\ Dark.tmTheme.cache
├── Slush\ &\ Poppies.tmTheme.cache
├── Solarized\ (Dark).tmTheme.cache
├── Solarized\ (Light).tmTheme.cache
├── SpaceCadet.tmTheme.cache
├── Sunburst.tmTheme.cache
├── Twilight.tmTheme.cache
├── Zenburnesque.tmTheme.cache
└── iPlastic.tmTheme.cache

0 directories, 22 files
➜  Color Scheme - Default  


tmTheme            | color
-------------------|---------------------
All Hallow's Eve | ⭐️⭐️⭐️对比度强
Amy                | ⭐️昏暗，对比度不强
Blackboard         | ⭐️⭐黑板，黑白对比强烈
Cobalt             | ⭐️⭐️⭐️️⭐️️暗蓝底色，对比度强，推荐
Dawn               | ⭐️⭐️普通白色
Eiffel             | ⭐⭐️⭐️白色，推荐
Espresso Libre    | ⭐️⭐️红黑底色，稍显昏暗
IDLE               | ⭐️⭐️普通白色
iPlastic           | ⭐⭐️⭐️灰白背景，推荐
LAZY               | ⭐️⭐️普通白色
Mac Classic       | ⭐⭐️⭐️白色背景，推荐
MagicWB (Amiga)   | ⭐
Monokai Bright    | ⭐⭐️⭐️黑色背景，推荐
Monokai            | ⭐⭐️黑色背景，一般
Pastels on Dark  | ⭐
**Slush & Poppies**  | ⭐⭐️⭐️⭐️灰白背景，简洁推荐
Solarized (Dark)  | ⭐️⭐️⭐️️经典，推荐
Solarized (Light) | ⭐️⭐️⭐️️⭐️️经典，推荐
SpaceCadet         | ⭐
Sunburst           | ⭐️⭐️⭐️️黑色背景，推荐
Twilight           | ⭐⭐️黑色背景，对比一般
Zenburnesque       | ⭐⭐️⭐️深灰背景，推荐

### 安装主题
cd Packages：`Preferences -> Browse Packages`

安装 **MarkdownEditing** 插件之后，默认安装了 `Yellow`、`Focus`、`Dark` 三种主题。

#### Dracula
[dracula/dracula-theme](https://github.com/dracula/dracula-theme)

A dark theme for Atom, Alfred, Emacs, Highlight.js, iTerm, JetBrains, Pygments, Slack, Sublime Text, TextMate, Terminal.app, Vim, Xcode, Zsh and many more.

#### Ciapre
[vinhnx/Ciapre.tmTheme](https://github.com/vinhnx/Ciapre.tmTheme)

Ciapre - an easy on the eyes Sublime Text/TextMate color scheme.

#### Brogrammer
[kenwheeler/brogrammer-theme](https://github.com/kenwheeler/brogrammer-theme)

Brogrammer is a flat sexy Sublime Text theme. Pushups not included.

#### Soda
git clone https://github.com/buymeasoda/soda-theme/ Color Scheme - Soda

#### Monokai Extended
- [Monokai - Spacegray](https://packagecontrol.io/packages/Monokai%20-%20Spacegray)：深色系  
- [Theme - Seti Monokai](https://packagecontrol.io/packages/Theme%20-%20Seti%20Monokai)：深色系  
- [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended) = Origin + **_Light_**(**浅色**) + Bright(深色)  

## Settings
通过菜单或快捷键 `⌘,` 打开设置项进行编辑。

- 左侧为 `Preferences.sublime-settings - Default`；
- 右侧为 `Preferences.sublime-settings - User`。

默认使用左侧的默认设置，如有需要可复制左侧的键值(key-value)到右侧，编辑对应配置项的值(value)。

也即 User 覆盖 Default，如果 User 中没有配置，则使用 Default 中的默认配置。

### translate_tabs_to_spaces
[将Tab键自动替换为4个空格](http://blog.csdn.net/intel80586/article/details/8306699)

Preferences->Settings User新增以下 KV：

---

```YAML
// Set to true to insert spaces when tab is pressed
“translate_tabs_to_spaces”: true,
```

### open_files_in_new_window
禁用新窗口打开，所有文件在一个窗口中以多 tab 模式打开。

Preferences->Settings User新增以下 KV：

---

```YAML
"open_files_in_new_window": false
```

**注意：**

> 多个 KV 行末用逗号分隔！

