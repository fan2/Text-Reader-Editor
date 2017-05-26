# [Open files and folders with Sublime Text 3 from the OS X Terminal](http://envyandroid.com/sublime-text-open-files-from-terminal/)

If you are using Sublime Text 3 on your mac, you may want to be able to open files and folders in Sublime via the Terminal?

You can easily do that via creating a new command, lets create the “sublime” command.

1. `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime`  
2. open your `~./profile` file either via command line, or another editor: `vi ~./profile`  
3. add `/usr/local/bin` to the PATH variable, for example like this:

	`PATH=/usr/local/bin:$PATH` `export PATH` and save the file.  

4. Run this command, which will reload your .profile settings: 

	`source ~/.profile`

You should now be able to open a new Terminal window, and run the following command to open the file or folder in Sublime Text 3!

```Shell
sublime filename.txt
```

> This is for Sublime Text 3 only, version 2 has a slightly different path.

[iOpener](https://github.com/rosshemsley/iOpener)  
[sublime_open_highlighted_path](https://github.com/sligodave/sublime_open_highlighted_path)  

[How to open file using only keyboard in Sublime Text?](https://superuser.com/questions/467693/how-to-open-file-using-only-keyboard-in-sublime-text)

