#!/usr/bin/bash

# close any existing lemonbars
#$CONFIGDIR/lemonbar/close_existing.sh
. $CONFIGDIR/lemonbar/bar_config 

 ws() { #print the workspace names and highlight the one we're in
    ws=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
    IFS=' ' read -a array <<< "${WORKSPACES}"
    ret="" 
    for index in "${!array[@]}"
    do
        if [ "$ws" -eq "$index" ]; then
           ret=$ret"%{B$BBLUE}%{F$BG} ${array[index]} %{B-}%{F-} "
        else
            ret=$ret" ${array[index]} "
        fi
    done
    if [ $ws -ge ${#array[@]} ]; then
        ret=$ret"%{B$BBLUE}%{F$BG} MISC($ws) %{B-}%{F-}"
    fi

    echo "$ret"
 }

 menu(){ # Useless for now ..
    # echo "%{B$BBLUE}%{F$BG} GMN  %{B-}%{F-}"
    # echo "%{B$BBLUE}%{F$BG} MOTHERSHIP  %{B-}%{F-}"
    echo "%{$bold} MOTHERSHIP  %{$normal}"
}

 temp(){ # CPUs temp ..
  temp=`sensors | awk '/Core 0/ {print +$3}'`
    echo "%{F$BBLUE}  %{F-} Core 0 : ${temp}°"
}
    
 fan(){ # Fan speeds ..
  fan=`sensors | awk '/fan1/ {print $2,$3}'`
    echo "%{F$BBLUE}  %{F-} ${fan}"
}

 clock(){ # Clock, obv ..
  clock=`date "+%b %d %Y %I:%M"`
    echo "%{F$BBLUE}  %{F-} ${clock}"
}

 vol(){ # Volume, Sets to Headset when switched ..
  switch=`amixer -c 0 get Master | awk '/Mono:/ {print $6}'`
  vol=`amixer -c 0 get Master | awk '/Mono:/ {print $4}' | tr -d '[]%,'`
  hsvol=`amixer -c 0 get PCM | awk '/Mono:/ {print $4}' | tr -d '[]%,'`

  if [ "$switch" = "[on]" ]; then
    echo "%{F$BBLUE}  %{F-} ${vol}"
  elif [ "$switch" = "[off]" ]; then
    echo "%{F$RED}  %{F-} MUTE"
  else
    echo "%{F$BBLUE}  %{F-} ${hsvol}"
  fi
}

 mus(){ # Current song ..
  # mus=`mpc current -f %title%`
  paused=$(mpc | grep paused)
  if [ -z "$paused" ]; then
      paused=""
  else
      paused="[paused]"
  fi

  mus=$(mpc current -f \"%title%\"\ \(%album%\)\ -\ %artist%\ )

  if [[ $mus ]]; then
    echo "%{F$BBLUE}  %{F-}$paused ${mus}"
  fi
}

 last(){ # Weechat, Last highlight ..
  last=`(tail -n1) <$HOME/Gmnbox/Panel/Weelog`

  if [[ $last ]]; then
    echo "%{A:cat /dev/null > $HOME/Gmnbox/Panel/Weelog:}${last}%{A}"
  fi
}

 net(){ # Connected or nah? ..
  ping=`ping 8.8.8.8 -c 1 | awk '/rtt/ {printf("%d\n",$4 + 0.5)}'`
  test -n "${ping}" && echo "%{F$BBLUE}  %{F-} ${ping}ms" || echo "%{F$RED}  %{F-} No Connection"
}

while :; do

 # Run ping in intervals ..
 [[ loops -eq 15 ]] && loops=0
 [[ loops -eq 0 ]] && ping=$(net)
 loops=$(( loops + 1 ))

    echo "$(menu) | $(ws)   $(vol)♪  %{c}$(mus) %{r}$(temp) $(fan) $ping $(clock)  "
    sleep 0.5 
         
 done | lemonbar -g ${PW}x${PH}+${PWO}+${PO} -B "$BG" -F "$BYELLOW" -d -p | \

 # done | lemonbar -g ${PW}x${PH}+${PWO}+${PO} -B "$BG" -F "$BYELLOW" -d -p | \
 # done | lemonbar -B "$BG" -F "$BYELLOW" -d -p | \
    while read line; do eval "$line"; done &
