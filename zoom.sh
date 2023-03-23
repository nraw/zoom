#!/usr/bin/env sh -e
DATA=$(icalBuddy -n -b '' -nnr -ea -nc -eed -nrd -npn -ps "/|/" -po title,datetime,location eventsNow)
if [[ -z $DATA ]]; then
	DATA=$(icalBuddy -n -li 3 -b '' -nnr -ea -nc -eed -nrd -npn -ps "/|/" -po title,datetime,location eventsToday)
fi
SELECTION=$(echo "$DATA" | fzf -1 )
echo "$SELECTION"
URL=$(echo $SELECTION  | awk -F'|' '{print $3}' )
# open "http://www.google.com"
open "$URL"
