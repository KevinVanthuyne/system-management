;
; BIND data for ns.kevin-vanthuyne.sb.uclllabs.be
;
$TTL 3h
@       IN      SOA     ns.kevin-vanthuyne.sb.uclllabs.be. admin.kevin-vanthuyne.sb.uclllabs.be. (
                        1       ; SERIAL
                        3h      ; Refresh
                        1h      ; Retry
                        1w      ; Expire
                        1h )    ; Minimum
;
@	IN	NS	ns.kevin-vanthuyne.sb.uclllabs.be.
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.
@	IN	NS	ns.arne-vandebemdt.sb.uclllabs.be.

ns.kevin-vanthuyne.sb.uclllabs.be.      IN      A       193.191.177.161
ns1.uclllabs.be                     IN      A       193.191.176.254
ns2.uclllabs.be                     IN      A       193.191.177.4
; ns.arnevandebemdt.sb.uclllabs.be
www                     IN      CNAME   ns.kevin-vanthuyne.sb.uclllabs.be.
