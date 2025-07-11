options=" Shutdown\n Reboot\n Lock\n Logout\n⏾ Suspend"

selected=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$selected" in
    " Shutdown") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Lock") i3lock ;;
    " Logout") i3-msg exit ;;
    "⏾ Suspend") systemctl suspend ;;
    *) exit 1 ;;
esac
