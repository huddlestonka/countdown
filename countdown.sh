#!/bin/bash

seconds=1500;
date1=$((`date +%s` + $seconds));
while [ "$date1" -ge `date +%s` ]; do
    echo -ne "$(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r";
done
echo 