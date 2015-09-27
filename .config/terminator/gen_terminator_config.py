#!/bin/env python

# jhallard September 2015
# https://github.com/jhallard

import random
import os, os.path
import sys

configstr = """
[global_config]
  always_split_with_profile = True
  borderless = True
  broadcast_default = off
  geometry_hinting = False
  inactive_color_offset = 0.89
  scrollbar_position = disabled
  titlebars = False
  title_hide_sizetext = True
  title_inactive_bg_color = "#002b36"
  title_inactive_fg_color = "#eee8d5"
  title_receive_bg_color = "#002b36"
  title_receive_fg_color = "#eee8d5"
  title_transmit_bg_color = "#002b36"
  title_transmit_fg_color = "#eee8d5"
  title_use_system_font = False
[keybindings]
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      profile = default
      type = Terminal
    [[[window0]]]
      parent = ""
      type = Window
[plugins]
[profiles]
  [[default]]
    copy_on_selection = True
    # font = DejaVu Sans Mono 10
    scrollback_infinite = True
    show_titlebar = False
    use_system_font = False
"""


if __name__ == "__main__" :
    DIR = '/home/jhallard/.config/terminator/themes/'
    themes = [name for name in os.listdir(DIR) if os.path.isfile(os.path.join(DIR, name))]
    numthemes = len(themes)
    theme = ""
   
    if(len(sys.argv) == 1) :
        random.seed()

        fnum = random.randint(0, numthemes-1)
        with open(DIR+themes[fnum], 'r') as fh :
            themelines = [line for line in fh.readlines() if line.find('[[') == -1]
            theme = "".join(themelines)


    else :
        themename = str(sys.argv[1])

        if themename not in themes :
            print "Theme %s not found" % themename
            sys.exit(1)

        with open(DIR+themename, 'r') as fh :
            themelines = [line for line in fh.readlines() if line.find('[[') == -1]
            theme = "".join(themelines)

    termconf = open('/home/jhallard/.config/terminator/config', 'wr+')

    termconf.write(configstr)
    termconf.write(theme)
    termconf.close()

