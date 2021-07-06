#!/bin/zsh

xset r rate 190 50

sxhkd &
flameshot &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
  done
else
  MONITOR=DP-1 polybar --reload default &
fi

xrandr --auto --output DP-1 --below DP-2 &
xrdb -l /home/yondonjamts/.Xresources
exec bspwm
