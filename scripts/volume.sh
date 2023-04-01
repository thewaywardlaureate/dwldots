#!/bin/bash
#
if
    vol=$(pactl list sinks | grep 'Mute: yes')
then
dunstctl close-all
dunstify "🚫: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')" 
sleep 2s
sleep .5s
dunstctl close-all

else

dunstctl close-all
dunstify "🔊: $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')" 
sleep 2s
sleep .5s
dunstctl close-all

fi

