
## list of installed extensions

[How do I back up my VS Code settings and list of installed extensions?](https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions)

```shell
faner@MBP-FAN:~|⇒  cd .vscode/extensions

faner@MBP-FAN:~/.vscode/extensions|⇒  date
Mon Jun 11 07:07:25 CST 2018

# ls -1
faner@MBP-FAN:~/.vscode/extensions|⇒  code --list-extensions --show-versions
CoenraadS.bracket-pair-colorizer@1.0.58
EditorConfig.EditorConfig@0.12.4
Gruntfuggly.todo-tree@0.0.59
HookyQR.minify@0.3.0
IBM.output-colorizer@0.1.2
Shan.code-settings-sync@2.9.2
alefragnani.project-manager@0.25.2
anseki.vscode-color@0.4.5
azemoh.one-monokai@0.3.4
christian-kohler.path-intellisense@1.4.2
chrmarti.regex@0.2.0
dbaeumer.vscode-eslint@1.4.12
donjayamanne.githistory@0.4.1
dzannotti.vscode-babel-coloring@0.0.4
eamodio.gitlens@8.3.5
eg2.tslint@1.0.30
emeryao.we-app-vscode@0.8.0
fabiospampinato.vscode-open-in-browsers@1.1.4
fknop.vscode-npm@3.3.0
fmoronzirfas.open-in-marked@1.0.0
formulahendry.auto-rename-tag@0.0.15
gerane.Theme-Brogrammer@0.1.0
HookyQR.beautify@1.3.1
hoovercj.vscode-power-mode@2.2.0
johnstoncode.svn-scm@1.29.1
mdickin.markdown-shortcuts@0.8.1
miramac.vscode-exec-node@0.5.0
mohsen1.prettify-json@0.0.3
ms-python.python@2018.5.0
ms-vscode.cpptools@0.17.4
ms-vscode.Go@0.6.82
ms-vscode.sublime-keybindings@4.0.0
msjsdiag.debugger-for-chrome@4.6.0
naumovs.color-highlight@2.3.0
nemesv.copy-file-name@1.0.0
nonoroazoro.syncing@1.6.2
octref.vetur@0.12.5
patrys.vscode-code-outline@0.2.1
pranaygp.vscode-css-peek@2.1.0
qinjia.vscode-wechat@0.0.6
rbbit.typescript-hero@2.3.2
robertohuertasm.vscode-icons@7.23.0
shakram02.bash-beautify@0.1.1
shd101wyy.markdown-preview-enhanced@0.3.5
shinnn.stylelint@0.36.3
sidthesloth.html5-boilerplate@1.0.3
sleistner.vscode-fileutils@2.9.0
slevesque.vscode-hexdump@1.6.0
vscodevim.vim@0.12.0
wayou.vscode-todo-highlight@0.5.12
wesbos.theme-cobalt2@2.1.6
wmaurer.vscode-jumpy@0.3.1
yzhang.markdown-all-in-one@1.4.0
Zignd.html-css-class-completion@1.17.1

# ls -1 | wc -l
faner@MBP-FAN:~/.vscode/extensions|⇒  code --list-extensions --show-versions | wc -l
      54
```

## list of disabled extensions

1. Brogrammer Theme  
2. Cobalt2 Theme Official  
3. Code Outline  
4. Git History  
5. One Monokai Theme  
6. Settings Sync  
7. Vim  
