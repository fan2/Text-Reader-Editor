
[SublimeLinter](https://github.com/SublimeLinter) - The code linting framework for Sublime Text 3  
[SublimeLinter](https://github.com/SublimeLinter/SublimeLinter) Framework  

## HTML

### [Emmet](http://emmet.io/)

<https://github.com/sergeche/emmet-sublime>

Emmet 插件可以说是使用 Sublime Text 进行前端开发必不可少的插件，它让编写HTML代码变得极其简单高效。

### HTML-CSS-JS Prettify

[Sublime-HTMLPrettify](https://github.com/victorporof/Sublime-HTMLPrettify) 依赖 node.js  

PCI 搜索安装 **`HTML-CSS-JS Prettify`**

### [SublimeLinter-contrib-htmlhint](https://github.com/mmaday/SublimeLinter-contrib-htmlhint)

1. `npm install -g htmlhint@latest` 安装 htmlhint - npm；  
2. PCI 已搜索安装 `SublimeLinter-contrib-htmlhint`。

## CSS

### [CSS3](https://github.com/y0ssar1an/CSS3)

The most complete CSS support for Sublime Text 3

默认安装的 Sublime Text 对 CSS3 的支持让人抓狂，帧动画？别开玩笑了，你只会看到一片白色的纯文本一样的代码。

PCI 已搜索安装 `CSS3`，然后替代自带的 `CSS`：

1. 在 `Package Control: Disable Package -> CSS` 中禁用自带的 CSS Package；  
2. 打开任意 CSS 文件，选择 `View -> Syntax -> Open all with current extension as... -> CSS3`，使用 CSS3 替代 CSS 完成语法高亮。

### [**Sublime-CSS-Format**](https://github.com/mutian/Sublime-CSS-Format)  

PCI 已搜索安装 `CSS Format`

调用命令：`Format CSS:`

### [stylelint](https://stylelint.io/)

A mighty, modern **CSS** linter

<https://github.com/stylelint/stylelint>

[Lint your CSS with stylelint](https://css-tricks.com/stylelint/)  
[Taking CSS Linting to the Next Level with Stylelint](https://www.sitepoint.com/taking-css-linting-next-level-stylelint/)  

1. `npm install -g stylelint` 安装 stylelint - npm；  
2. PCI 已搜索安装 `SublimeLinter-stylelint`。

如果工程没有 stylelint 配置，则 Console 中将会提示：

```shell
SublimeLinter: WARNING: Stylelint crashed: No configuration provided for /Users/faner/Projects/feature-components/node_modules/postcss-discard-overridden/test/input.css
WARNING:SublimeLinter.plugin.stylelint:Stylelint crashed: No configuration provided for /Users/faner/Projects/feature-components/node_modules/postcss-discard-overridden/test/input.css
```

### [SublimeLinter-csslint](https://github.com/SublimeLinter/SublimeLinter-csslint)

1. `npm install -g csslint` 安装 csslint - npm；  
2. PCI 搜索安装 `SublimeLinter-csslint`。

### [LESS](https://packagecontrol.io/packages/LESS)

LESS syntax highlighting for Sublime Text

PCI 已搜索安装 LESS。

[Sublime Text3 支持Less](https://blog.csdn.net/XIAOZHUXMEN/article/details/51305659) @[cnblogs](https://www.cnblogs.com/liuzhibin/p/6228293.html)  

### [Color Highlighter](https://github.com/Monnoroch/ColorHighlighter)

Color Highlighter 插件会检测 CSS 文件中的颜色码，不论是 Hex 码或者 RGB 码都能很好的显示对应的颜色。

PCI 已搜索安装 Color Highlighter。

## JavaScript

### [JavaScript Next](https://github.com/Benvie/JavaScriptNext.tmLanguage)

PCI 已搜索安装 [JavaScript Next - ES6 Syntax](https://packagecontrol.io/packages/JavaScriptNext%20-%20ES6%20Syntax)  

JavaScript Next 提供了比默认 JavaScript Package 更好的语法高亮，而且完美支持 ECMAScript 6。

PCI 已搜索安装 `JavaScript Next`，然后替代自带的 JavaScript：

1. 在 `Package Control: Disable Package -> JavaScript` 中禁用自带的 JavaScript Package；  
2. 打开任意 js 文件，选择 `View -> Syntax -> Open all with current extension as... -> Javascript Next`，使用 JavaScript Next 替代 JavaScript 完成语法高亮。

[Configuring Sublime Text 3 for Modern ES6 JS Projects](https://medium.com/@nicklee1/configuring-sublime-text-3-for-modern-es6-js-projects-6f3fd69e95de)  

[在 Sublime Text 上配置 ES2015 开发环境](https://morning.work/page/2016-03/sublime-text-for-nodejs-es2015-development.html)  
[Sublime Text 之运行 ES6 (基于babel)](http://www.52cik.com/2015/10/21/sublime-text-run-es6.html)  
[Sublime Text内运行javascript(ES6)及代码检查](https://blog.csdn.net/fengzijinliang/article/details/52350410)  

### JsFormat

PCI 已搜索安装 [`JsFormat`](https://github.com/jdc0589/JsFormat)（替代 `Javascript Beautify`）。

调用命令：`Format: Javascript`

如果工程安装使用了 ESLint，那么 [ESLint-Formatter](https://packagecontrol.io/packages/ESLint-Formatter) 是个不错的选择，因为他会执行 `eslint --fix` 修正不规范的地方。

### [eslint](https://eslint.org/)

ESLint - The pluggable linting utility for **JavaScript** and JSX

ES6 = ECMAScript 6

[es6+eslint配置](https://blog.suzper.com/2016/08/09/hapi-es6%E9%85%8D%E7%BD%AE/)

[Setup ESLint with ES6 in Sublime Text](http://www.jonathancreamer.com/setup-eslint-with-es6-in-sublime-text/)  
[Sublime Text3 eslint 配置 支持ES6](https://www.jianshu.com/p/947dfe67b9ef)  
[Sublime text 3 配置 ESLint 代码检查](https://zhuanlan.zhihu.com/p/26652509)  

安装 eslint 插件用于静态检查代码的语法和风格。

1. `npm install -g eslint` 安装 eslint - npm；  
2. PCI 已搜索安装 `SublimeLinter-eslint`。

如果工程没有 eslint 配置，则 Console 中将会提示：

```shell
WARNING:SublimeLinter.plugin.eslint:
Oops! Something went wrong! :(

ESLint: 4.19.1.
ESLint couldn't find a configuration file. To set up a configuration file for this project, please run:

    eslint --init

ESLint looked for configuration files in /Users/faner/Projects/feature-components and its ancestors. If it found none, it then looked in your home directory.

If you think you already have a configuration file or if you need more help, please stop by the ESLint chat room: https://gitter.im/eslint/eslint
```

### [SublimeLinter-jshint](https://github.com/SublimeLinter/SublimeLinter-jshint)

1. `npm install -g jshint` 安装 jshint - npm；  
2. PCI 搜索安装 `SublimeLinter-jshint`。

**注意**：当使用 ES6 开发时务必把 jshint 关掉，否则报一堆警告错误。

或者参考 [Atom 使用Jshint时const is available in ES6 (use esversion:6)](https://blog.csdn.net/u013887008/article/details/79304399) ，在项目的根目录新建一个文件名为 `.jshintrc` 的文件：

```json
{
     "esversion": 6
}
```

但这个可能会与 ES5 等有兼容问题？

### JavaScript Completions 和 Java​Script & Node​JS Snippets。

输入提示，代码补全

## [wxapp](https://github.com/FloydaGithub/wxapp)

PCI 已搜索安装 wxapp，用来开发微信小程序的 Sublime 插件。

快捷键 `⌥M`，弹出 `wxapp -> ` 浮窗。

- wxml & wxss syntax  
- Auto Completion  
- **Open API Documentation**  
- **Open Component Documentation**  
