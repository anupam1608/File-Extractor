#!/bin/bash

if [ -f $1 ]; 
then
	file=$1
	case $1 in
		*.tar.bz2) tar xjf $file;;
		*.tar.xz) tar -xf $file;;
		*.tar.gz) tar xzf $file;;
		*.zip) unzip $file;;
		*.rar) rar x $file;;
		*.tar) tar xf $file;;
		*.tgz) tar xzf $file;;
		*.gz) gunzip $file;;
		*.bz2) bunzip2 $file;;
		*.jar) jar xvf $file;;
		*.xz) xz -d $file;;
		*.Z) uncompress $file;;
		*) echo "Not a valid compressed file";;
	esac

else
    echo "Not a valid file"

fi