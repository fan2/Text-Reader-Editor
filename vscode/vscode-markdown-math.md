
# vscode markdown math

[Markdown, Mathematical Expressions and VSCode](https://upyesp.org/posts/makrdown-vscode-math-formula/)

Markdown documents can include elegant representations of algebraic formulae, using KaTeX.

The [CommonMark](https://commonmark.org/) specification of Markdown does not include scope for representing formulae or equations. Fortunately, there is [KaTeX](https://katex.org/), an excellent typesetting library, which can be embedded in Markdown. KaTeX is supported extensively.

VSCode supports KaTeX in Markdown, equations are rendered in the VSCode preview pane.

---

Inline math equations are wrapped in single dollar signs.

Inline math: `$...$`: $x^2$.

And blocks begin and end with two dollar signs.

```
Math block:

$$
..
$$
```

示例一：方程

```LATEX
$$
a^2 + b^2 = c^2 \\
e=mc^2
$$
```

$$
a^2 + b^2 = c^2 \\
e=mc^2
$$

示例二：矩阵表达式

```LATEX
$$
\begin{pmatrix}
a & b \cr
c & d
\end{pmatrix}
+
\begin{pmatrix}
e & f \cr
g & h
\end{pmatrix}
$$
```

$$
\begin{pmatrix}
a & b \cr
c & d
\end{pmatrix}
+
\begin{pmatrix}
e & f \cr
g & h
\end{pmatrix}
$$

## Markdown preview

Release Notes of June 2021 (version 1.58): [Math formula rendering in the Markdown preview](https://code.visualstudio.com/updates/v1_58#_math-formula-rendering-in-the-markdown-preview): VS Code's built-in Markdown preview can now render math equations using [KaTeX](https://katex.org/).

- [VS Code tips: Math equations in the built-in Markdown preview](https://www.youtube.com/watch?v=yw8PSfd_48s)

vscode 内置的 Markdown 预览插件，默认开启了 math 支持。

> KaTeX is faster than MathJax, but it lacks many features that MathJax has. You can check [KaTeX supported functions/symbols](https://khan.github.io/KaTeX/function-support.html).

```json
{
  // Enable/disable rendering math in the built-in Markdown preview.
  "markdown.math.enabled": true

},
```

## Markdown All in One

安装插件 [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one#math)，其 README 中建议禁用该插件默认的 math.enabled，改用其他 LaTeX Math for Markdown 专用插件（例如 Markdown+Math）来进行数学公式支持渲染。

> Please use [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath) for dedicated math support. Be sure to disable `math.enabled` option of this extension.

```json
{
  // Enable basic math support (Powered by KaTeX).
  "markdown.extension.math.enabled": true,

},
```

鉴于 vscode 内置的 Markdown preview 插件默认已经开启了 math 支持，故不用额外安装 Markdown+Math 等数学公式渲染插件。

## Markdown Preview Enhanced

vscode markdown 增强预览插件 [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced) 支持 [math typesetting](https://shd101wyy.github.io/markdown-preview-enhanced/#/math)。

Markdown Preview Enhanced uses [KaTeX](https://github.com/Khan/KaTeX) or [MathJax](https://github.com/mathjax/MathJax) to render math expressions.

```json
  // Use customized Math expression block delimiters.
  "markdown-preview-enhanced.mathBlockDelimiters": [
    [
      "$$",
      "$$"
    ],
    [
      "\\[",
      "\\]"
    ]
  ],

  // Use customized Math expression inline delimiters.
  "markdown-preview-enhanced.mathInlineDelimiters": [
    [
      "$",
      "$"
    ],
    [
      "\\(",
      "\\)"
    ]
  ],

  // Choose the Math expression rendering method option for GFM markdown export (Save as Markdown).
  "markdown-preview-enhanced.mathRenderingOnlineService": "https://latex.codecogs.com/gif.latex",

  // Choose the Math expression rendering method here. You can also disable math rendering if you want by choosing 'None'.
  "markdown-preview-enhanced.mathRenderingOption": "KaTeX",
```

## Markdown in notebooks

Jupyter Book - [Math and equations](https://jupyterbook.org/en/stable/content/math.html)

vscode 安装微软官方提供的 Python 插件 [Microsoft Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)，内嵌打包了 Jupyter 插件，而 Jupyter 插件内嵌打包了 Jupyter Notebook Renderers 等插件。

```json
//  - vscode.markdown-math: Adds math support to Markdown in notebooks.
```

vscode 中通过命令 `Create: New Jupyter Notebook` 创建 ipynb 文件中的 Markdow Cell 默认支持数学公式的渲染。

## MyST

[MyST](https://myst-parser.readthedocs.io/en/latest/) - Markedly Structured Text - Parser

A Sphinx and Docutils extension to parse MyST, a rich and extensible flavour of Markdown for authoring technical and scientific documentation.

[Math shortcuts](https://myst-parser.readthedocs.io/en/latest/syntax/optional.html#math-shortcuts): Enabling `dollarmath` will parse the following syntax.

vscode 插件：[MyST-Markdown](https://marketplace.visualstudio.com/items?itemName=ExecutableBookProject.myst-highlight) - [myst-vs-code](https://github.com/executablebooks/myst-vs-code)。

## github

早期的 github 不支持 markdown math formulae 的渲染，可采用 [Math to Image](https://marketplace.visualstudio.com/items?itemName=MeowTeam.vscode-math-to-image) 插件将数学公式渲染生成图片插入。

- [VS Code Math to Image: Write LaTeX Math Equations in GitHub Markdown the Easy Way!](https://medium.com/spencerweekly/vs-code-math-to-image-write-latex-math-equations-in-github-markdown-the-easy-way-9fa8b81dc910)

目前，github 已经支持 markdown 在线渲染数学公式，具体参考 [Math support in Markdown](https://github.blog/2022-05-19-math-support-in-markdown/), [Writing mathematical expressions](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/writing-mathematical-expressions)。

## refs

KaTeX supported functions/symbols: [sorted by type](https://katex.org/docs/supported.html), [sorted alphabetically](https://katex.org/docs/support_table.html).

[MathJax basic tutorial and quick reference](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference)

[Writing Mathematic Fomulars in Markdown](https://csrgxtu.github.io/2015/03/20/Writing-Mathematic-Fomulars-in-Markdown/)
