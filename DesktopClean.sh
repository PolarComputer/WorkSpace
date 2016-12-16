#!/bin/sh

date=$(date '+%b/%d/%g')

zenity --question \
--title="WorkSpace Cleaner" \
--text="Would you like to re-organize your desktop?" \
--ok-label="No" \
--cancel-label="Yes"
case $? in

#Clean Desktop
    0) echo "Cleaning Desktop..."
    mkdir ~/Desktop/WorkSpace
    mv ~/Desktop/* ~/Desktop/WorkSpace
    ;;

#Archive Desktop
    1) echo "Archiving Desktop..."
    ;;
esac

