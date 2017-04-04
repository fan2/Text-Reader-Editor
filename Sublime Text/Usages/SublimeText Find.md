## Quick Find
鼠标双击选中当前光标所在位置的单词(word)：

1. **`Command+E`** to Use Selection for Find  
2. `Option+Command+G`：快速查找下一个；或 **`Command+G`**/**`Shift+Command+G`** 通用查找下/上一个。  
3. `Command+D`：基于分隔符（word_separators）选中当前光标所在的单词(Expand Selection to Word)。再次选中下一次出现的该文本(_Quick Add Next_)。  
4. `Control+Command+G`：快速选中所有(当前光标所在的单词)。  

查找到所有包含光标所在的单词后，可使用 **`Command + L`** 扩展选中结果到行：

- `command+C` 可复制所有行；  
- `command+V` 用剪贴板内容替换所有行；  
- `delete` / `command＋delete` 可删除所有行。  

## Find...
[How can I filter a file for lines containing a string in Sublime Text 2?](http://superuser.com/questions/452189/how-can-i-filter-a-file-for-lines-containing-a-string-in-sublime-text-2
)

To multi-select all lines containing a substring

1. Select the string of interest.
2. Hit `Command+F` to **Find All** occurences.
3. Hit `Command+L` to **Expand** All Selection **Word to Line**.
4. Then you can copy or delete all the lines containing matching words.

![Command+F(Find).png](images/Command+F(Find).png)

底部查找栏左侧有6个选项：

- Regular expression：正则表达式查找模式  
- Case sensitive：区分大小写  
- Whole word：整词完整匹配  
- [Wrap](http://sublimetexttips.com/enabling-wrap-mode-in-sublimes-find-replace-and-find-in-files/)：默认从当前光标所在行向下搜索，如果下文无匹配不会自动向上查找，只能手动点击 `Find Prev`。开启此项之后，则会自动滚动查找。  
- [In selection](http://stackoverflow.com/questions/20623883/sublime-text-find-in-selection)：在 `settings-> user` 中配置 "find_selected_text": true，则按下 `Command+F` 时将以当前选中词作为关键字填充搜索栏。  
- Highlight matches：高亮匹配项  

> 按下 `esc` 键，可隐藏 `Bottom Find Bar`。

## Find in Files
- [sublime text- "list lines containing 'find' string](http://stackoverflow.com/questions/14364329/sublime-text-list-lines-containing-find-string)  
- [How to show find results in separate tab or window?](http://stackoverflow.com/questions/26543307/how-to-show-find-results-in-separate-tab-or-window)  
- [Search Results Panel for SublimeText 2](http://stackoverflow.com/questions/15929527/search-results-panel-for-sublimetext-2)  

How do I list the lines that contains the matches from the "find" command ? ie., I would like to list all the matching lines in a separate window.

> Try 'Find in Files' (`Cmd+Shift+F` on a Mac, presumably `Ctrl+Shift+F` on a PC).
> 
> Specifying <open files> in the Where field will only search open files. Search results will display in a new tab, and you can double-click any result to jump to that line in the matching file.

### 查找选项
左侧有5个查找选项：

- Regular expression：正则表达式查找模式  
- Case sensitive：区分大小写  
- Whole word：整词完整匹配  
- Show Context：是否在查找结果中融入查找结果行的上下文  
- Use Buffer：使用缓冲  

若禁用 `Show Context`，则不显示查找结果上下文，只显示包含结果行（show only the lines that match and none of the others lines）。

### Find
**普通查找模式**输入查找关键字；**正则查找模式**则输入正则表达式。

### where
通过快捷键 `Command+Shift+F` 调出 `Find|Find in Files`，默认在所有打开的文件（`Open files and folders`）中查找。 

![Command+Shift+F(where-default).png](images/Command+Shift+F(where-default).png)

点击右侧中间的 `...` 按钮可调出菜单，例如在当前文档查询，可选择 `Add Current File` 添加当前文件到查找源。

### Use Buffer
#### bottom panel
以下为选择正则表达式，选择 `Show Context`，不选择 `Use Buffer`，查找的结果将在**弹出的底栏**显示：

![Command+Shift+F(not-Use_Buffer).png](images/Command+Shift+F(not-Use_Buffer).png)
![Command+Shift+F(not-Use_Buffer)-Show_Results_Panel.png](images/Command+Shift+F(not-Use_Buffer)-Show_Results_Panel.png)

可复制查找结果(及上下文)，拷贝到新的文件中保存结果。

双击底栏 **Results Panel** 中的结果行，可以定位到所在源文件对应行。

> 按下 `esc` 键，可隐藏 `Bottom Results Panel`；
> 通过菜单 `Find|Find Results|Show Results Panel` 可调出 `Bottom Results Panel`。

#### new tab
选中 `Use Buffer`，点击【Find】则会在**新建的 tab** 中展示 Find Results：

![Command+Shift+F(Use_Buffer).png](images/Command+Shift+F(Use_Buffer).png)
![Command+Shift+F(Use_Buffer)-Find_Results-tab.png](images/Command+Shift+F(Use_Buffer)-Find_Results-tab.png)

可复制查找结果(及上下文)，拷贝到新的文件中保存结果。

双击底栏 **Results Tab** 中的结果行，可以定位到所在源文件对应行。

> 按下 `esc` 键，可隐藏 `Bottom Find Bar`。

## [FilterLines](http://blchen.com/sublime-text-plug-in-filter-lines/)
[Sublime Text 插件 Filter Lines](http://blchen.com/sublime-text-plug-in-filter-lines/)

There's now a plugin for filtering lines: 

    https://github.com/davidpeckham/FilterLines 

It allows filtering and code folding based on strings or regular expressions.

安装该插件后，`Edit|Line` 菜单中将会多出以下两项快捷键菜单：

- `Filter with Regex`：⌘K,⌘R  
- `Filter with String`：⌘K,⌘S  

`Edit|Code Folding` 菜单中将会多出以下两项快捷键菜单：
  
- `Fold with Regex`  
- `Fold with String`  

## 正则匹配
[Sublime Text 高级正则查换替换功能](http://blog.csdn.net/aerchi/article/details/46739167)

[sublime text 开启正则表达式查找](http://blog.csdn.net/yageeart/article/details/39027459)

[Sublime Text非官方文档](http://sublime-text.readthedocs.io/en/latest/index.html) - [搜索与替换 - 多文件](http://sublime-text.readthedocs.io/en/latest/search_and_replace/search_and_replace_files.html)

[Sublime Text 全程指南](http://www.kancloud.cn/digest/sublime-text-complete-guide) - [查找&替换（Finding&Replacing）](https://www.kancloud.cn/digest/sublime-text-complete-guide/61431)
