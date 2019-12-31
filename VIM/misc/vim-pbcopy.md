## vim-pbcopy

[How to copy to clipboard in Vim?](https://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim)  
[Vim copy to system clipboard on a Mac](https://coderwall.com/p/v-st8w/vim-copy-to-system-clipboard-on-a-mac)  

macOS 下的 pbcopy 和 pbpaste 命令提供了对剪贴板的复制粘贴支持。

```
pbcopy, pbpaste - provide copying and pasting to the pasteboard (the Clipboard) from command line
```

---

On macOS, copy selected part: visually select text(type `v` or `V` in normal mode) and type `:w !pbcopy`

Visually select the text and type:

```
ggVG
!tee >(pbcopy)
```

Which I find nicer than:

```
ggVG
:w !pbcopy
```

Since it doesn't flash up a prompt: `Press ENTER or type command to continue`

---

On macOS, copy lines to system clipboard:

1. copy line m: `:<m> w !pbcopy`  
2. copy line m to n: `:<m>,<n> w !pbcopy`  
3. copy the whole file `:%w !pbcopy`  
4. paste from the clipboard `:r !pbpaste`  

On most Linux Distros, you can substitute:

1. pbcopy above with `xclip -i -sel c` or `xsel -i -b`  
2. pbpaste using `xclip -o -sel -c` or `xsel -o -b`  
3. visual select and copy  

## remap

```
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
```
