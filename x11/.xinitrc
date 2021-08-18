#!/bin/zsh

sxhkd &
flameshot &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
  done
else
  MONITOR=DP-1 polybar --reload default &
fi

xrandr --auto --output DP-1 --left DP-2 &
xrdb -l /home/yondonjamts/.Xresources
xset r rate 190 50
exec bspwm
