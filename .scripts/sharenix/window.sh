#!/bin/sh

# lets the user select a region of the screen and uploads the
# screenshot using sharenix

sharenixtmp=$(mktemp /tmp/nicememe.XXXXXXXXXXXXXXXXXXX)
mv "$sharenixtmp" "$sharenixtmp.png"
sharenixtmp="$sharenixtmp.png"

maim -uB --window $(xdotool getactivewindow) $sharenixtmp || exit $?
notify-send -i $sharenixtmp "Screenshot" "Copied to clipboard\!"

# check file size (0b means that gnome-screenshot was cancelled)
sharenixtmpsize=$(wc -c <"$sharenixtmp")

if [ $sharenixtmpsize != 0 ]; then
    sharenix -c -q "$@" $sharenixtmp | xclip -i -sel cli
    exit $?
fi


echo "Screenshot canceled"
exit 1