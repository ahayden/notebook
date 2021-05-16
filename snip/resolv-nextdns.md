1. Add nextdns resolved config
```SH
cat >> /etc/systemd/resolved.conf.d/nextdns.conf 
[Resolve]
DNS=45.90.28.0#host-key.dns1.nextdns.io
DNS=2a07:a8c0::#host-key.dns1.nextdns.io
DNS=45.90.30.0#host-key.dns2.nextdns.io
DNS=2a07:a8c1::#host-key.dns2.nextdns.io
DNSOverTLS=yes
```
2. Install resolvconf: `apt-get install resolvconf`
3. Enable service: `systemctl enable systemd-resolved.service`
4. Make resolvconf not dynamically update `/etc/resolv.conf`: `dpkg-reconfigure resolvconf`
5. Remove default `resolv.conf`: `rm /etc/resolv.conf`
6. Add resolv.conf link to resolved: `ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf`
