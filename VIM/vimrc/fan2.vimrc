"==============================================================================
" // 文件类型等全局配置开关
"==============================================================================
"去掉有关vi一致性模式，避免以前版本的一些bug和局限 
set nocp "nocompatible

"http://easwy.com/blog/archives/advanced-vim-skills-filetype-on/
"检测文件的类型($VIMRUNTIME/filetype.vim): 
"该脚本使用自动命令(autocmd)来根据文件名来判断文件的类型。
"如果无法根据文件名来判断出文件类型，会调用$vimRUNTIME/scripts.vim
"来根据文件的内容设置文件类型。
filetype on

"允许vim加载文件类型插件($VIMRUNTIME/ftplugin.vim)
filetype plugin on

"允许vim为不同类型的文件定义不同的缩进格式($VIMRUNTIME/indent.vim)
filetype indent on

"语法高亮显示
sy on "syntax

"记录历史的行数
set history=1000

"设定文件浏览器目录为当前目录
set bsdir=buffer

"自动切换当前目录为当前文件所在的目录 
set acd "autochdir

"==============================================================================
" // 显示配置
"==============================================================================
"显示行号
set nu "number

"在右下角状态栏显示光标位置
set ru "ruler

"当前编辑行高亮
set cul "cursorline

"==============================================================================
" // mix tab 设置
"==============================================================================
"In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
"Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on.
"不使用空格代替制表符，使用原生hardtabs；
"若开启et，插入真正的制表符，需要使用CTRL-V<Tab>。
set noet "noexpandtab

"Number of spaces that a <Tab> in the file counts for.
"制表符以空格度量的位宽
set ts=4 "tabstop

"Number of spaces to use for each step of (auto)indent.
"Used for |'cindent'|, |>>|, |<<|, etc.
"自动缩进所使用的空白长度指示
set sw=4 "shiftwidth

"Number of spaces that a <Tab> counts for while performing editing operations, 
"like inserting a <Tab> or using <BS>.
"mix of spaces and <Tab>s is used.
"一旦设置了softtabstop的值，按下tab键将智能插入空格和制表符的混合
set sts=4 "softtabstop

"==============================================================================
" // 缩进配置
"==============================================================================
"自动对齐，把当前行的对齐格式应用到下一行
set ai "autoindent

"依据上面的对齐格式，智能地选择对齐方式
set si "smartindent

"支持C++的缩进(cindent)
"set cin

"==============================================================================
" // 折叠配置
"==============================================================================
set fen "foldenable

"==============================================================================
" // 搜索配置
"==============================================================================
" 输入搜索内容时就显示搜索结果
set is "incsearch
 
"搜索忽略大小写 
"set ic "ignorecase

"查找匹配高亮显示(hlsearch = hilight search) 
"每次搜索完输入 :noh 可以清除高亮。
set hls "hlsearch 

