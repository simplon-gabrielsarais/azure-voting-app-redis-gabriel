#!/usr/bin/env bash
# coding: utf-8
# vi: tabstop=8 expandtab shiftwidth=4 softtabstop=4

directory="azure-vote"
filename="main.py"

ver=$(grep -oP '(?<=ver=)[0-9]\.[0-9]\.[0-9]' "$directory/$filename")

new_ver=$(printf "%d.%d.%d" $((RANDOM%10)) $((RANDOM%10)) $((RANDOM%10)))

sed -i "s/ver=$ver/ver=$new_ver/g" "$directory/$filename"

echo "Done. Updated $filename in $directory with new version number $new_ver."

git commit -a -m "new vers" && git push

exit 0
