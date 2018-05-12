## [打造自己的Sublime使用环境](http://www.codesec.net/view/165691.html)

[如何优雅地使用Sublime Text 3](http://www.jianshu.com/p/3cb5c6f2421c)  

## [Sublime Text : 创建工程](http://www.cnblogs.com/bluestorm/p/4768383.html)

Sublime Text 可以很方便地管理多个工程。
使用 Sublime Text 的 [Projects](http://docs.sublimetext.info/en/latest/file_management/projects.html)，可以将不同根目录的文件组织起来成为一个工程，而不用将所有的文件都放到一个根目录下面。

## 文件夹（Folders）

Sublime Text 的 `File | Open...` 菜单支持以文件夹为单位进行打开编辑，这在编辑一个文件夹下的代码时尤其有用。

使用 `⌘P` 调出文件跳转搜索列表框，可快速切换当前文件夹下的文件。

### 创建工程

    Project > Add Folder to Project

这时在 sidebar 中将出现刚刚添加的文件目录，如果还需要添加其他目录，则重复这一操作即可。

### 保存工程

    Project > Save Project As

点击保存后Sublime Text将自动生成两个文件：

- `project_name.sumlime-project`：包含工程定义，该文件会被记录到版本控制里。  
- `project_name.sublim-workspace`：包含了用户的工程数据，例如打开的文件和修改等，该文件不会被记录到版本控制里。  

在 `*.sublime-project` 文件中，你可以定义工程配置。例如你可以定义多个目录路径，或者哪些目录或文件需要排除在外。例如：

以上 `*.sublime-project` 文件中定义了两个目录，而“name”标签是该目录在 Sublime Text 的 sidebar 中显示的名字。通过定义“name”，你可以将一些长路径或者名字很长的目录以更简洁的名称显示在 sidebar 中。

### 切换工程

如果你同时有好几个工程需要开发，你可以有以下两种方式来打开你需要工作的工程：

1. 启动 Sublime Text，点击 Project > Open Project，找到 `*.sublime-project` 文件，打开。  
2. 启动 Sublime Text，通过 Ctrl + Alt + P（`^⌥P` 或 `^⌘P`） 快捷键，将列举所有的 Sublime Project 可供选择切换（Quick Switch Project）。

PS：如果直接使用 Sublime Text 编辑 `*.sublime-project`，Sublime Text 会自动载入工程，建议使用别的文本编辑器编辑 `*.sublime-project`。

在打开工程时，为避免与现开窗口已有文件混在一起，可以通过 File|New Window （Shift+Command+N，`⇧⌘N`）**新建窗口**，再在新建独立窗口中打开工程。

### 打开文件

鼠标单击侧边栏文件夹（FOLDERS）下的某个文件，只会以一个 tab 以只读模式打开查看，标题为斜体。  
当光标输入 a、i、o 编辑插入时，或在侧边栏双击某个文件，则该文件将自动在新建的 OPEN FILES 分组中打开。
如果开启了 outline，则 outline 放到 GROUP 1，所有已打开文件放到 GROUP 2 中。
