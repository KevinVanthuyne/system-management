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

# process CNAME record
if [ $type = "CNAME" ]
then
	if [ "$#" -ne "2"]
	then
		echo "CNAME only takes 2 arguments: -t CNAME alias zone"
		exit 1
	else
		alias=$1
		zone=$2
		echo "$alias	IN	CNAME	$zone" >> /etc/bind/zones/$zone
		echo "added CNAME record '$alias' to $zone"
	fi

# process other types
else
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

	echo "added $type record '$subzone' (resolving to $ip) to $zone"
fi

# find the line with the version number and increase it by 1
awk -i inplace '/SERIAL/ {gsub(/[0-9]*/, $1+=1, $1)}; { print }' /etc/bind/zones/$zone

