
[Open file under cursor](https://vim.fandom.com/wiki/Open_file_under_cursor)  
[Open a web-browser with the URL in the current line](https://vim.fandom.com/wiki/Open_a_web-browser_with_the_URL_in_the_current_line)  

## netrw-gx

[Open a URL from Vim](https://til.hashrocket.com/posts/69e7479ab9-open-a-url-from-vim)  
[netrw's "gx" functionality doesn't open URLs anymore in macOS](https://github.com/vim/vim/issues/4738)  

`:h netrw-gx` 查看帮助：

```
Associated setting variables:
        g:netrw_gx      control how gx picks up the text under the cursor
        g:netrw_nogx    prevent gx map while editing
        g:netrw_suppress_gx_mesg controls gx's suppression of browser messages
        
When g:netrw_browsex_viewer exists and is "-", then netrw will attempt to
handle the special file with a vim function.  The "x" map applies a function
to a file, based on its extension.  Of course, the handler function must exist
for it to be called!

Associated setting variable: g:netrw_browsex_viewer
```

## HandleURL

[Open URL under cursor in Vim with browser](https://stackoverflow.com/questions/9458294/open-url-under-cursor-in-vim-with-browser)

Press `gx`.  
You can customize the browser.  
On Gnome and Mac OS X it's already use `gnome-open`/`open`.  
Generally you can set `g:netrw_browsex_viewer` to anything you want.  

```
function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;()]*')
  let s:uri = shellescape(s:uri, 1)
  echom s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
    :redraw!
  else
    echo "No URI found in line."
  endif
endfunction
```

```
nnoremap <leader>w :call HandleURL()<CR>¬
```

## vim-open-url

[henrik/vim-open-url](https://github.com/henrik/vim-open-url)  
[open-browser.vim](https://github.com/tyru/open-browser.vim)  

**推荐插件**：[dhruvasagar/vim-open-url](https://github.com/dhruvasagar/vim-open-url)

git clone 下载插件到 `~/.vim/bundle` 目录：

```
faner in ~/.vim/bundle $ git clone https://github.com/dhruvasagar/vim-open-url.git

faner in ~/.vim/bundle $ ls
VOoM         vim-marked   vim-open-url

faner in ~/.vim/bundle $ cd vim-open-url
faner in ~/.vim/bundle/vim-open-url on master $ ls
README.md autoload  plugin
```

**VIM Command** :

- `:OpenURL <url>` to open given url in the default web browser

**VIM Mappings** :

These work in both normal mode and visual mode :

- `gB`: Open url under cursor in the default web browser  
- `gG`: Google search word under cursor in the default web browser  
- `gW`: Wiki search word under cursor in the default web browser  
