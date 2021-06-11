## set up
- use lite image
- `apt-get full-upgrade` to bullseye
- resolved
- unattended-upgrades
- keys
- `apt-get install xorg openbox`
- vnc:
  - sudo systemctl enable vncserver-x11-serviced
  - sudo vncpasswd -service
  - echo "Authentication=VncAuth" >> /etc/vnc/config.d/common.custom
  - sudo systemctl restart vncserver-x11-serviced
  - echo "/usr/bin/xterm & \n exec /usr/bin/openbox" >> ~/.xinitrc
- docker


