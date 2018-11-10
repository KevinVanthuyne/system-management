#!/bin/bash

# find the line with the version number
awk '/SERIAL/ {print $1}' $1
