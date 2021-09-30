#!/bin/bash

text="$(pwd)/text.sh"
open -a "Messages"
while read -r line
do
   $text "$1" "$line"
done < $2
