;
; BIND data for kevin-vanthuyne.sb.uclllabs.be
;
$TTL 300 ; 5 min
@       IN      SOA     ns.kevin-vanthuyne.sb.uclllabs.be. admin.kevin-vanthuyne.sb.uclllabs.be. (
211 ; SERIAL
                        3h      ; Refresh
                        1h      ; Retry
                        1w      ; Expire
                        300 )    ; Minimum
;
@	IN	NS	ns
@       IN      NS      ns1.uclllabs.be.
@       IN      NS      ns2.uclllabs.be.
; @	IN	NS	ns.arne-vandebemdt.sb.uclllabs.be.
@	IN	CAA	0 issue "letsencrypt.org"

ns      IN      A       193.191.177.161 ; als ns in zelfde domein zit als zone: ip adres meegeven (= glue record)
ns	IN	AAAA	2001:6a8:2880:a077::161
test	IN	A	193.191.177.254
www	IN	A	193.191.177.161
@	IN	A	193.191.177.161
@	IN	AAAA	2001:6a8:2880:a077::161
www1     IN      A       193.191.177.161
www2     IN      A       193.191.177.161
secure	IN	A	193.191.177.161
supersecure	IN	A	193.191.177.161
mx.kevin-vanthuyne.sb.uclllabs.be	IN	A	193.191.177.161
IN	MX	10	mx.kevin-vanthuyne.sb.uclllabs.be

