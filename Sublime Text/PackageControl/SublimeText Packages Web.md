
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

### CSS3

CSS3 语法高亮

默认安装的 Sublime Text 对 CSS3 的支持让人抓狂，帧动画？别开玩笑了，你只会看到一片白色的纯文本一样的代码。

建议用 CSS3 Package 完全替代原来的 CSS Package 来完成语法高亮。

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

### Color Highlighter

CSS 颜色高亮

Color Highlighter 插件会检测 CSS 文件中的颜色码，不论是 Hex 码或者 RGB 码都能很好的显示对应的颜色。

## JavaScript

### JavaScript Next

JavaScript Next 提供了比默认 JavaScript Package 更好的语法高亮，而且完美支持 ECMAScript 6。

建议完全使用 JavaScript Next 代替 JavaScript Package。

### JsFormat

PCI 已搜索安装 [`JsFormat`](https://github.com/jdc0589/JsFormat)（替代 `Javascript Beautify`）。

调用命令：`Format: Javascript`

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

### JavaScript Completions 和 Java​Script & Node​JS Snippets。

输入提示，代码补全

## [wxapp](https://github.com/FloydaGithub/wxapp)

用来开发微信小程序的 Sublime 插件。

快捷键 `⌥M`，弹出 `wxapp -> ` 浮窗。

- wxml & wxss syntax  
- Auto Completion  
- **Open API Documentation**  
- **Open Component Documentation**  
