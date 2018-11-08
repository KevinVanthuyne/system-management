#!/bin/bash
echo "Adding zone '$1.kevin-vanthuyne.sb.uclllabs.be'"

# add zone to named.conf.local
echo "zone \"$1.kevin-vanthuyne.sb.uclllabs.be\" {
        type master;
        allow-transfer { 193.191.176.254; 193.191.177.4; };
        file \"/etc/bind/zones/$1.kevin-vanthuyne.sb.uclllabs.be\";
};
" >> /etc/bind/named.conf.local

# add zone file
echo ";
; BIND data for $1.kevin-vanthuyne.sb.uclllabs.be
;
\$TTL 300 ; 5 min
@       IN      SOA     ns.kevin-vanthuyne.sb.uclllabs.be. admin.kevin-vanthuyne.sb.uclllabs.be. (
                        1       ; SERIAL
                        3h      ; Refresh
                        1h      ; Retry
                        1w      ; Expire
                        300 )    ; Minimum
;
@       IN      NS      ns.kevin-vanthuyne.sb.uclllabs.be.
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.
; @     IN      NS      ns.arne-vandebemdt.sb.uclllabs.be.

ns.kevin-vanthuyne.sb.uclllabs.be.      IN      A       193.191.177.161
;ns1.uclllabs.be.                     IN      A
;ns2.uclllabs.be.                     IN      A
;ns.arnevandebemdt.sb.uclllabs.be.
$1.kevin-vanthuyne.sb.uclllabs.be.      IN      A       193.191.177.161
" > /etc/bind/zones/$1.kevin-vanthuyne.sb.uclllabs.be

