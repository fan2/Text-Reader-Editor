08Nov17

`cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages` 进入 `Packages/` 目录，查看手动安装的插件：

```shell
faner@THOMASFAN-MB0:~/Library/Application Support/Sublime Text 3/Packages|
⇒  tree -L 1
.
├── Codecs33
├── ConvertToUTF8
├── GBK\ Encoding\ Support
├── OmniMarkupPreviewer
├── User
├── backrefs
├── bs4
├── markupsafe
├── mdpopups
├── package_events
├── pathtools
├── pygments
├── pymdownx
├── python-jinja2
├── python-markdown
├── pyyaml
└── watchdog

17 directories, 0 files
```

`cd ../Installed\ Packages` 进入 `Installed Packages ` 目录，查看通过 Package Control 安装的插件：

```shell
faner@THOMASFAN-MB0:~/Library/Application Support/Sublime Text 3/Packages|
⇒  cd ../Installed\ Packages 
faner@THOMASFAN-MB0:~/Library/Application Support/Sublime Text 3/Installed Packages|
⇒  tree -L 1
.
├── 0_package_control_loader.sublime-package
├── AdvancedNewFile.sublime-package
├── Agila\ Theme.sublime-package
├── BracketHighlighter.sublime-package
├── Clickable\ URLs.sublime-package
├── DeleteBlankLines.sublime-package
├── File\ Navigator.sublime-package
├── File\ Rename.sublime-package
├── FileBrowser.sublime-package
├── Filter\ Lines.sublime-package
├── MarkdownTOC.sublime-package
├── Outline.sublime-package
├── Package\ Control.sublime-package
├── Path\ Tools.sublime-package
├── SublimePackageSync.sublime-package
└── Table\ Editor.sublime-package

0 directories, 16 files
```

还可查看 `~/Library/Application Support/Sublime Text 3/Cache` 缓存目录。
