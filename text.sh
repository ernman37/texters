#!/bin/bash

open -g -a "Messages"
if [[ $3 > 1 ]]
then
   let a=$3
else
   let a=1
fi
for (( i=1; i <= $a; i++ ))
do
   osascript -e 'tell application "Messages" to send "'"$2"'" to buddy "'$1'"'
done

if [ $? == 0 ]
then
   echo -e "${GREEN}Your text message to $1 was Sucessful${NOCOLOR}"
else
   echo -e "${RED}Your text message to $1 was Unsucessful${NOCOLOR}"
fi
