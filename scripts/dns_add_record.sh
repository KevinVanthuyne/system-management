#!/bin/bash

type="A"

# parsing options
while getopts 't:' OPTION; do
	case "$OPTION" in
		t)
			type=$OPTARG
			shift "$((OPTIND-1))"
			;;
		?)
			echo "script usage: [-t (A|MX|CNAME)] subzone ip-adress zone"
			exit 1
			;;
	esac
done

# check arguments
if [ "$#" -ne "3" ]
then
	echo "incorrect amount of arguments"
	echo "script usage: [-t (A|MX|CNAME)] subzone ip-adress zone"
	exit 1
fi

subzone=$1
ip=$2
zone=$3

# add record to zone file
echo "$subzone.$zone.	IN	$type	$ip" >> /etc/bind/zones/$zone

# find the line with the version number and increase it by 1
awk -i inplace '/SERIAL/ {gsub(/[0-9]*/, $1+=1, $1)}; { print }' /etc/bind/zones/$zone

echo "added $type record '$subzone' (resolving to $ip) to $zone"
