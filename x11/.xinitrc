sxhkd &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
  done
else
  MONITOR=eDP-1 polybar --reload default &
fi

xrandr --auto --output eDP-1 --below DP-3 &
xrdb -l /home/yondonjamts/.Xresources
exec bspwm
