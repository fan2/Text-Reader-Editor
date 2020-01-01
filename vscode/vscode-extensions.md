
## list of installed extensions

[How do I back up my VS Code settings and list of installed extensions?](https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions)

```shell
~ » tree -L 1 .vscode/extensions

~ » code --list-extensions --show-versions | wc -l
      68
~ » code --list-extensions --show-versions
CoenraadS.bracket-pair-colorizer@1.0.61
DotJoshJohnson.xml@2.5.0
HookyQR.beautify@1.5.0
HookyQR.minify@0.4.3
IBM.output-colorizer@0.1.2
Zignd.html-css-class-completion@1.19.0
alefragnani.project-manager@10.9.1
anseki.vscode-color@0.4.5
austin.code-gnu-global@0.2.2
bbenoist.shell@0.3.0
beaugust.blamer-vs@0.5.2
christian-kohler.npm-intellisense@1.3.0
christian-kohler.path-intellisense@1.4.2
chrmarti.regex@0.2.0
cliffordfajardo.highlight-line-vscode@0.0.1
Dart-Code.dart-code@3.7.1
Dart-Code.flutter@3.7.1
dbaeumer.vscode-eslint@2.0.11
dkundel.vscode-npm-source@1.0.0
dunstontc.viml@0.1.7
dzannotti.vscode-babel-coloring@0.0.4
eamodio.gitlens@10.2.0
earshinov.permute-lines@1.1.0
EditorConfig.EditorConfig@0.14.4
eg2.tslint@1.0.44
eliean.vscode-svn@0.1.0
emeryao.we-app-vscode@0.8.0
eriklynd.json-tools@1.0.2
everettjf.filter-line@1.5.1
fabiospampinato.vscode-open-in-browsers@1.1.7
fknop.vscode-npm@3.3.0
fmoronzirfas.open-in-marked@1.0.8
formulahendry.auto-rename-tag@0.1.1
formulahendry.code-runner@0.9.15
Gruntfuggly.todo-tree@0.0.162
hoovercj.vscode-power-mode@2.2.0
jasonnutter.search-node-modules@1.3.0
johnstoncode.svn-scm@2.2.1
Lulus.vscode-regexp-preivew@1.0.0
mdickin.markdown-shortcuts@0.12.0
miramac.vscode-exec-node@0.5.1
mitaki28.vscode-clang@0.2.3
mohsen1.prettify-json@0.0.3
ms-python.python@2019.11.50794
ms-vscode.cpptools@0.26.2
ms-vscode.Go@0.12.0
msjsdiag.debugger-for-chrome@4.12.3
naumovs.color-highlight@2.3.0
naumovs.node-modules-resolve@1.0.2
nemesv.copy-file-name@1.2.0
nonoroazoro.syncing@3.0.13
peterj.proto@0.0.2
pranaygp.vscode-css-peek@3.0.2
qinjia.vscode-wechat@0.0.6
rbbit.typescript-hero@3.0.0
shakram02.bash-beautify@0.1.1
shd101wyy.markdown-preview-enhanced@0.5.0
shinnn.stylelint@0.51.0
sidthesloth.html5-boilerplate@1.0.3
sleistner.vscode-fileutils@3.0.0
slevesque.vscode-hexdump@1.7.2
twxs.cmake@0.0.17
vincaslt.highlight-matching-tag@0.9.6
vscode-icons-team.vscode-icons@9.7.0
wayou.vscode-todo-highlight@1.0.4
wmaurer.vscode-jumpy@0.3.1
yzhang.markdown-all-in-one@2.6.1
zh9528.file-size@0.1.3
```

## list of disabled extensions

1. Git Tree Compare  
2. Sublime Text Keymap  
3. Vim  
