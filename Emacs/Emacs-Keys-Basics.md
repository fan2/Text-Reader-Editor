
参考 [Command_Line_Editing](https://github.com/fan2/Linux-Notes/blob/master/shell/manual/Command_Line_Editing.md)

[**Emacs Keys Basics**](http://ergoemacs.org/emacs/emacs_keys_basics.html)  
[Emacs Keys Overview](http://ergoemacs.org/emacs/emacs_keybinding_overview.html)  
[Key Layout Diagram](http://ergoemacs.org/emacs/emacs_kb_shortcuts.html)  
[How to Define Keys](http://ergoemacs.org/emacs/keyboard_shortcuts.html)  

[**GNU Emacs Reference Card**](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf)  
[Basic Emacs Keyboard Shortcuts](http://www.stat.rice.edu/~bhatticr/tutorials/EmacsShortcuts.pdf)  
[Basic Emacs Editor Commands](https://www.cs.colostate.edu/helpdocs/emacs.html)  

[51 Insanely Useful Emacs Shortcuts](http://www.grokcode.com/207/51-insanely-useful-emacs-shortcuts/)  
[59 Shortcuts for Emacs 23.2.1 (Linux)](https://shortcutworld.com/Emacs/linux/Emacs_23.2.1_Shortcuts)  

在命令行执行 `emacs filename` 打开文件。

`C-x` 为 Prefix Command。

## quit

emacs 下连续按下3个 `ESC` 键或按下 `C-g`，清零（Quit Input）底栏输入。

key            | binding
---------------|--------
`ESC ESC ESC`  | keyboard-escape-quit
`C-g`          ｜ abort partially typed or executing command

## windows

key              | binding
-----------------|-------
`<C-x> o`        | other-window • Move cursor to the other pane

`C-x o` : Switch to next window

## Open, Save, Close, File

shortcut          | meaning
------------------|----------
`<C-x> C-f`       | find-file • Open
`<C-x> C-s`       | save-buffer • Save
`<C-x> k`         | kill-buffer • Close
`<C-x> C-w`       | Save As
`<C-x> s`         | Save All
`<C-x> C-c`       | Quit

## Copy Paste Undo

shortcut          | meaning
------------------|----------
`C-w`             | kill-region • Cut
`M-w`             | kill-ring-save • Copy
`C-y`             | yank • Paste
`<C-x>u` / `C-_`  | undo • Undo

## Moving Cursor

shortcut          | meaning
------------------|----------
`C-f`             | forward-char • Move cursor right 1 char.
`C-b`             | backward-char • Move cursor left 1 char.
`C-←` / `M-b`     | backward-word • Move cursor left by word.
`C-→` / `M-f`     | forward-word • Move cursor right by word.

## Moving Lines

shortcut          | meaning
------------------|----------
`C-a`             | line.begin
`C-e`             | line.end
`C-p`             | line.up
`C-n`             | line.down
`<M-g> g` / `<M-x> goto-line` | Goto the indicated line.

### [Emacs: Show Line Numbers](http://ergoemacs.org/emacs/emacs_line_number_mode.html)

emacs has 2 line numbers mode显示或者取消[行号](https://blog.csdn.net/dghggij/article/details/84191532).

#### [linum-mode](https://blog.csdn.net/dghggij/article/details/84191532)

Emacs 23 (released in 2009) has a line number mode. It shows line numbers in margin.

`<M-x> linum-mode` → toggle line number in current.  
`<M-x> global-linum-mode` → toggle line number in all buffers.  

#### global-display-line-numbers-mode

Emacs 26 (released in 2018-05) has a new line number mode.

`<M-x> global-display-line-numbers-mode` → show line numbers in all buffers.  
`<M-x> display-line-numbers-mode` → show line numbers in current buffer.  

## Page Up/Dn

shortcut          | meaning
------------------|----------
`C-v`             | scroll-up-command • page down
`M-v`             | scroll-down-command • page up
`C-Home` / `M-<`  | beginning-of-buffer • Beginning of file.
`C-End` / `M->`   | end-of-buffer • End of document.
