#!/bin/bash

cd ~/Documents/wallpapers

files=()

for i in *.jpg *.png *.gif; do
	[[ -f $i ]] && files+=("$i")
done

range=${#files[@]}
((range)) && feh --bg-fill "${files[RANDOM % range]}"
