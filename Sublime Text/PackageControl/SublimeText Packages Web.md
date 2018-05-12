
[SublimeLinter](https://github.com/SublimeLinter) - The code linting framework for Sublime Text 3  
[SublimeLinter](https://github.com/SublimeLinter/SublimeLinter) Framework  

## HTML

### HTML-CSS-JS Prettify

[Sublime-HTMLPrettify](https://github.com/victorporof/Sublime-HTMLPrettify) 依赖 node.js  

PCI 搜索安装 **`HTML-CSS-JS Prettify`**

### [SublimeLinter-contrib-htmlhint](https://github.com/mmaday/SublimeLinter-contrib-htmlhint)

1. `npm install -g htmlhint@latest` 安装 htmlhint - npm；  
2. PCI 搜索安装 `SublimeLinter-contrib-htmlhint`。

## CSS

### [**Sublime-CSS-Format**](https://github.com/mutian/Sublime-CSS-Format)  

PCI 搜索安装 `CSS Format`

调用命令：`Format: CSS`

### [stylelint](https://stylelint.io/)

A mighty, modern **CSS** linter

<https://github.com/stylelint/stylelint>

[Lint your CSS with stylelint](https://css-tricks.com/stylelint/)  
[Taking CSS Linting to the Next Level with Stylelint](https://www.sitepoint.com/taking-css-linting-next-level-stylelint/)  

1. `npm install -g stylelint` 安装 stylelint - npm；  
2. PCI 搜索安装 `SublimeLinter-stylelint`。

如果工程没有 stylelint 配置，则 Console 中将会提示：

```shell
SublimeLinter: WARNING: Stylelint crashed: No configuration provided for /Users/faner/Projects/feature-components/node_modules/postcss-discard-overridden/test/input.css
WARNING:SublimeLinter.plugin.stylelint:Stylelint crashed: No configuration provided for /Users/faner/Projects/feature-components/node_modules/postcss-discard-overridden/test/input.css
```

### [SublimeLinter-csslint](https://github.com/SublimeLinter/SublimeLinter-csslint)

1. `npm install -g csslint` 安装 csslint - npm；  
2. PCI 搜索安装 `SublimeLinter-csslint`。

## JavaScript

### JsFormat

PCI 搜索安装 `Javascript Beautify`，已被 [JsFormat](https://github.com/jdc0589/JsFormat) 替代。

调用命令：`Format: Javascript`

### [eslint](https://eslint.org/)

ESLint - The pluggable linting utility for **JavaScript** and JSX

[es6+eslint配置](https://blog.suzper.com/2016/08/09/hapi-es6%E9%85%8D%E7%BD%AE/)

[Setup ESLint with ES6 in Sublime Text](http://www.jonathancreamer.com/setup-eslint-with-es6-in-sublime-text/)  
[Sublime Text3 eslint 配置 支持ES6](https://www.jianshu.com/p/947dfe67b9ef)  
[Sublime text 3 配置 ESLint 代码检查](https://zhuanlan.zhihu.com/p/26652509)  

安装eslint插件用于静态检查代码的语法和风格。

1. `npm install -g eslint` 安装 eslint - npm；  
2. PCI 搜索安装 `SublimeLinter-eslint`。

如果工程没有 eslint 配置，则 Console 中将会提示：

```
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
