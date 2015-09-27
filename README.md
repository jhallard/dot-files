Dot-Files
===============

This is my collection of scripts and configuration files for the  [i3-gaps window manager][i3gaps], zsh, [terminator][terminator], and [lemonbar][lemonbar].

* TODO - Add Pictures *

### Get and Install
I use these files on Arch Linux but you should be able to use them with i3 on other distros. 
```sh
$ git clone https://github.com/jhallard/dot-files.git
$ cd dot-files
```
I want to make an install script but I don't want to override the existing configs, so I'm currently figuring that out. Many of the features of my build use system variables (.zsh_variables) which are sourced in .zshrc. 

### Features
The main features of my setup are the i3 configs, the top floating bar, the wallpaper changing script,
 and the terminator-color-scheme chaning scripts. I'll go over each of these below.

#### i3 Config
All i3 config files are inside of the `$HOME/.i3/` directory. It sets the gap sizes and gets lemonbar going, it also sets up various hotkeys like $mod+ctrl+w to change wallpapers and $mod+ctrl+c to change terminal colors.

#### Lemonbar
The top floating bar is created using the open-souce lemonbar project.
Using lemonbar is quite simple, you create a script to continuously output a text buffer containing what ever you want,and you pipe the output of this script to the lemonbar executable. Lemonbar will display whatever text (including ASCII codes for color highlighting) as long as your scripts keep outputting.

Lemonbar config is placed in `.config/lemonbar/`. There are a few files in there, 
 * `close_existing.sh` - Closes any open lemonbar process.
 * `runbar.sh` - Generates output in a loop to pipe to the `lemonbar` executable.
 * `bar_config` - A bunch of defines used by `runbar.sh`. The color of the bar is set by grabbing the `.config/colors/Frost` file and reading in the colors from there. If you want a different colored bar, change this file or add another one.
 
Lemonbar is started in `.i3/config` file with the call :
```sh
exec  sh "$CONFIGDIR/lemonbar/runbar.sh" 
```

#### Terminator
Terminator is light-weight and customizable terminal that plays well with i3, and I use it as my main source of interaction
with the computer. Included in this project is a large collection of terminator color themes and a script to pick one either by name or at random if no name is given.

This project contains all of the terminator configurations inside of `.config/terminator`. The main config file is `config`,
it contains the default profile declaration and the setting to turn off scroll bars.
The script to change the color is `gen_terminator_config.py`. I manually insert a symbolic link to this script in `/usr/bin/` with the following commmmand :

```sh
$ ln -s $CONFIGDIR/terminator/gen_terminator_config.py /usr/bin/change_terminal_theme
```
If you give this script an argument containing the name of one of the files in the `colors/` directory, then this script will change the default profile in the `config` file to contain the colors for that color-file. If no argument is given, it a file in that directory at random and use it. 

 [i3gaps]: https://github.com/Airblader/i3
 [terminator]:http://gnometerminator.blogspot.com/p/introduction.html
 [lemonbar]: https://github.com/LemonBoy/bar


