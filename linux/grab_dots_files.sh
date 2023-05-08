#!/bin/bash

## John Allard September 2015
## https://github.com/jhallard

## grab all of my dotfiles from around my system and a copy of all in the dot-files directory
## that is connected to github as the dot-files repo

confdir="$CONFIGDIR"
i3dir="$HOME/.i3/"
dfdir="$LINUX/dot-files/"


zfiles="$HOME/.zshrc $HOME/.zlogin $HOME/.zsh_variables $HOME/.zsh_aliases $HOME/.zsh_functions"
cfiles="$HOME/.vimrc $HOME/.tmux.conf $HOME/.xinitrc $confdir/change_wallpaper.sh $confdir/do_rice.sh"
cdirs="$confdir/terminator $i3dir $confdir/lemonbar"

wallpapers="$LINUX/Pictures/wallpapers"


# grab current wallpapers
cp -r $wallpapers $dfdir/Pictures/wallpapers

## zsh files go in their own directory 

## copy all of the ind. config files over to the dot-files directory
IFS=' ' read -a array <<< "${zfiles}"
ret="" 
for file in "${array[@]}"
do
    if [ -e "$file" ]; then
        cp $file $dfdir/zshconf/
    else
        echo "Not Found : " + `pwd` + $file
    fi
done

## copy all of the ind. config files over to the dot-files directory
IFS=' ' read -a array <<< "${cfiles}"
ret="" 
for file in "${array[@]}"
do
    if [ -e "$file" ]; then
        cp $file $dfdir
    else
        echo "Not Found : " + `pwd` + $file
    fi
done


## copy all of the config directories over to the dot-files directory
IFS=' ' read -a array <<< "${cdirs}"
ret="" 
for dir in "${array[@]}"
do
    if [ -d "$dir" ]; then
        cp -r $dir $dfdir/.config/
    else
        echo "Not Found : " + `pwd` + $dir
    fi
done
