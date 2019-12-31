
## Anaconda 插件

[Anaconda](https://packagecontrol.io/packages/Anaconda)  
[Anaconda Python IDE](http://damnwidget.github.io/anaconda/)  

Anaconda turns your Sublime Text 3 in a full featured Python development IDE including autocompletion, code linting, IDE features, autopep8 formating, McCabe complexity checker Vagrant and Docker support for Sublime Text 3 using **Jedi**, **PyFlakes**, **pep8**, **MyPy**, **PyLint**, **pep257** and **McCabe** that will never freeze your Sublime Text 3

- completion(无需再单独安装 [**Jedi**](https://packagecontrol.io/packages/Jedi%20-%20Python%20autocompletion) 插件)  
    > `"disable_anaconda_completion": false`  
- PyFlakes  
- pep8  
    > `"pep8": true`, `"anaconda_linting": true`  
- MyPy  
    > `"mypy": false`  
- PyLint  
    > `"use_pylint": false`  
- pep257 and McCabe  

Anaconda 默认开启了 **anaconda_linting**。

> `Anaconda.sublime-settings` 中 **use_pylint** 设置为 false，默认禁用 PyLint，基于 pep8 和 PyFlakes。

`Sublime > Preferences > Package Settings > Anaconda > Settings - User` 设置错误行提示风格:

```json
{
    /*
        Set to false to disable Anaconda linting entirely.
    */
    "anaconda_linting": true,

    /*

        If anaconda_gutter_marks is true, this determines what theme is used.
        Theme 'basic' only adds dots and circles to gutter.

        Other available themes are 'alpha', 'bright', 'dark', 'hard', "retina"
        (for retina displays) and 'simple'. To see icons that will be used for
        each theme check gutter_icon_themes folder in Anaconda package.
    */
    "anaconda_gutter_theme": "simple",

    /*
        If 'outline' (default), anaconda will outline error lines.
        If 'fill', anaconda will fill the lines.
        If 'solid_underline', anaconda will draw a solid underline below regions.
        If 'stippled_underline', anaconda will draw a stippled underline below regions.
        If 'squiggly_underline', anaconda will draw a squiggly underline below regions.
        If 'none', anaconda will not draw anything on error lines.
    */
    "anaconda_linter_mark_style": "stippled_underline",
}
```

### functions

通过 Command Palette 或右键菜单 - Anaconda 可呼出以下功能：

- `Anaconda: Disable linting on this file`，选中后将不再进行 PEP8 错误标识。  

	> 选中 **Disable** 禁止 PEP8 错误提示后，将多出相应的 **Enable** 项可恢复提示。  

- `Anaconda: Show error list`：浮窗列出 PEP8 错误列表。  
- `Anaconda: Next/Previous lint error`：查看下/上 PEP8 错误。  

- `Anaconda: Autoformat PEP8 Errors`：按PEP8风格自动排版代码。

## SublimeLinter 插件

[SublimeLinter](https://github.com/SublimeLinter) - The code linting framework for Sublime Text 3  
[SublimeLinter](https://github.com/SublimeLinter/SublimeLinter) Framework  

- [SublimeLinter-pycodestyle](https://github.com/SublimeLinter/SublimeLinter-pycodestyle)：需执行 `pip3 install pycodestyle` 安装 pycodestyle  
- [SublimeLinter-pyflakes](https://github.com/SublimeLinter/SublimeLinter-pyflakes)：需要执行 `pip3 install pyflakes` 安装 pyflakes  
- [**SublimeLinter-flake8**](https://github.com/SublimeLinter/SublimeLinter-flake8)：需要执行 `pip3 install flake8` 安装 flake8  

建议采用 **SublimeLinter-flake8** 插件（基于 pycodestyle,pyflakes,mccabe），无需额外安装 SublimeLinter-pycodestyle 或 SublimeLinter-pyflakes 插件。

首先，在 `Sublime > Preferences > Package Settings > Anaconda > Settings - User` 中禁用  Anaconda 的 anaconda_linting：

```json
{
    "anaconda_linting": false,
}
```

其次，按照 [Three steps to lint Python 3.6 in Sublime Text](https://janikarhunen.fi/three-steps-to-lint-python-3-6-in-sublime-text.html) 以下步骤安装 SublimeLinter-flake8 插件：

1. macOS 终端执行 `pip3 install flake8` 安装 flake8，自动检测按需安装 pyflakes, pycodestyle, mccabe 等其他依赖包；  
2. 在 Sublime Text 中 PCI（Package Control: Install Package）安装 `SublimeLinter-flake8` 插件；  

SublimeLinter-flake8 自动检测 python 代码风格和逻辑错误，Sublime Text 底部状态栏左侧会实时显示鼠标聚焦当前行的检测结果（包括 annotations 和 flake8）。

出错时对应行号左侧边列（gutter）中将会出现红点，对应代码处将以红框标出（outine）。

- warning：橙色；  
- error：红色；  

当鼠标悬浮在 gutter 或 outine 上时，将会浮出错误提示框（tooltips），显示具体的错误码和错误提示信息。
