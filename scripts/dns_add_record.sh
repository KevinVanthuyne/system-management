#!/bin/bash

type="A"

# parsing options
while getopts 't:' OPTION; do
	case "$OPTION" in
		t)
			type=$OPTARG
			;;
		?)
			echo "script usage: [-t (A|MX|CNAME)] subzone ip-adress zone"
			exit 1
			;;
	esac
done

echo "type was: $type"

# find the line with the version number and increase it by 1
#awk -i inplace '/SERIAL/ {gsub(/[0-9]/, $1+=1, $1)}; { print }' $1
