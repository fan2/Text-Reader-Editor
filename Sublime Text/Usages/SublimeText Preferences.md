
## Color Scheme

### Color Scheme - Default
```Shell
➜  Color Scheme - Default  pwd
/Users/faner/Library/Application Support/Sublime Text 3/Cache/Color Scheme - Default
➜  Color Scheme - Default  tree -L 1
.
├── All\ Hallow's\ Eve.tmTheme.cache
├── Amy.tmTheme.cache
├── Blackboard.tmTheme.cache
├── Cobalt.tmTheme.cache
├── Dawn.tmTheme.cache
├── Eiffel.tmTheme.cache
├── Espresso\ Libre.tmTheme.cache
├── IDLE.tmTheme.cache
├── LAZY.tmTheme.cache
├── Mac\ Classic.tmTheme.cache
├── MagicWB\ (Amiga).tmTheme.cache
├── Monokai\ Bright.tmTheme.cache
├── Monokai.tmTheme.cache
├── Pastels\ on\ Dark.tmTheme.cache
├── Slush\ &\ Poppies.tmTheme.cache
├── Solarized\ (Dark).tmTheme.cache
├── Solarized\ (Light).tmTheme.cache
├── SpaceCadet.tmTheme.cache
├── Sunburst.tmTheme.cache
├── Twilight.tmTheme.cache
├── Zenburnesque.tmTheme.cache
└── iPlastic.tmTheme.cache

0 directories, 22 files
➜  Color Scheme - Default  
```

tmTheme            | color
-------------------|---------------------
All Hallow's Eve | ⭐️⭐️⭐️对比度强
Cobalt                   | ⭐️⭐️⭐️️⭐️️暗蓝底色，对比度强，推荐
Dawn                    | ⭐️⭐️普通白色
Eiffel                     | ⭐⭐️⭐️白色，推荐
iPlastic                 | ⭐⭐️⭐️灰白背景，推荐
Mac Classic        | ⭐⭐️⭐️白色背景，推荐
Monokai Bright     | ⭐⭐️⭐️黑色背景，推荐
Monokai                  | ⭐⭐️黑色背景，一般
**Slush & Poppies**  | ⭐⭐️⭐️⭐️灰白背景，简洁推荐
Solarized (Dark)   | ⭐️⭐️⭐️️经典，推荐
Solarized (Light)  | ⭐️⭐️⭐️️⭐️️经典，推荐
Sunburst                | ⭐️⭐️⭐️️黑色背景，推荐
Twilight                  | ⭐⭐️黑色背景，对比一般
Zenburnesque      | ⭐⭐️⭐️深灰背景，推荐

### 安装第三方主题
cd Packages：`Preferences -> Browse Packages`

#### [Brogrammer](https://packagecontrol.io/packages/Theme%20-%20Brogrammer)
[kenwheeler/brogrammer-theme](https://github.com/kenwheeler/brogrammer-theme)

Brogrammer is a flat sexy Sublime Text theme. Pushups not included.

#### [3024 Color Scheme](https://packagecontrol.io/packages/3024%20Color%20Scheme)
- day  
- **night**  

#### [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended)
-  Origin  
- **_Light_**(**浅色**)  
- Bright(深色)  

#### [Agila Theme](https://packagecontrol.io/packages/Agila%20Theme)
![Preferences-Color_Scheme.png](images/Preferences-Color_Scheme.png)

#### 其他
- [ayu](https://packagecontrol.io/packages/ayu)  
- [Theme - Soda](https://packagecontrol.io/packages/Theme%20-%20Soda)  
- [Soda Solarized​Dark](https://packagecontrol.io/packages/Theme%20-%20Soda%20SolarizedDark)  
- [Ciapre Color Scheme](https://packagecontrol.io/packages/Ciapre%20Color%20Scheme)  
- [Dracula Color Scheme](https://packagecontrol.io/packages/Dracula%20Color%20Scheme)  

## Settings
通过菜单或快捷键 `⌘,` 打开设置项进行编辑。

- 左侧为 `Preferences.sublime-settings - Default`；
- 右侧为 `Preferences.sublime-settings - User`。

默认使用左侧的默认设置，如有需要可复制左侧的键值(key-value)到右侧，编辑对应配置项的值(value)。

也即 User 覆盖 Default，如果 User 中没有配置，则使用 Default 中的默认配置。

### translate_tabs_to_spaces
[将Tab键自动替换为4个空格](http://blog.csdn.net/intel80586/article/details/8306699)

Preferences->Settings User新增以下 KV：

---

```YAML
// Set to true to insert spaces when tab is pressed
“translate_tabs_to_spaces”: true,
```

### open_files_in_new_window
禁用新窗口打开，所有文件在一个窗口中以多 tab 模式打开。

Preferences->Settings User新增以下 KV：

---

```YAML
"open_files_in_new_window": false
```

**注意：**

> 多个 KV 行末用逗号分隔！

