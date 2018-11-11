;
; BIND data for kevin-vanthuyne.sb.uclllabs.be
;
$TTL 300 ; 5 min
@       IN      SOA     ns.kevin-vanthuyne.sb.uclllabs.be. admin.kevin-vanthuyne.sb.uclllabs.be. (
10 ; SERIAL
                        3h      ; Refresh
                        1h      ; Retry
                        1w      ; Expire
                        300 )    ; Minimum
;
@	IN	NS	ns
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.
; @	IN	NS	ns.arne-vandebemdt.sb.uclllabs.be.


ns      IN      A       193.191.177.161 ; als ns in zelfde domein zit als zone: ip adres meegeven (= glue record)
test	IN	A	193.191.177.254
www	IN	A	193.191.177.161

