#!/usr/bin/env bash

printf "Lock\nLogout\nSuspend\nReboot\nPoweroff" | \
  fuzzel --dmenu | \
  while read -r choice; do
    case "$choice" in
      "Lock")     swaylock -i ~/.config/sway/bg/lockscreen.jpg ;;
      "Logout")   swaymsg exit ;;
      "Suspend")  systemctl suspend ;;
      "Reboot")   systemctl reboot ;;
      "Poweroff") systemctl poweroff ;;
    esac
  done

