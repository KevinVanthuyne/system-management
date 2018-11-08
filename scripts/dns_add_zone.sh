#!/bin/bash
echo "Adding zone '$1.kevin-vanthuyne.sb.uclllabs.be'"

# add zone to named.conf.local
echo "zone \"$1.kevin-vanthuyne.sb.uclllabs.be\" {
        type master;
        allow-transfer { 193.191.176.254; 193.191.177.4; };
        file \"/etc/bind/zones/$1.kevin-vanthuyne.sb.uclllabs.be\";
};
" >> test

