#!/bin/bash

echo "adding record to zone $1"

# find the line with the version number and increase it by 1
awk -i inplace '/SERIAL/ {gsub(/[0-9]/, $1+=1, $1)}; { print }' $1
