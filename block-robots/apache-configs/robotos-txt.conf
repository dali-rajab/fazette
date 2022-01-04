# cloud9 run at linux startup

Create a file /etc/systemd/system/cloud9.service :
```ini
# /etc/systemd/system/cloud9.service
[Unit]
Description=Cloud9 SDK
After=network.target

[Service]
ExecStart=/usr/bin/node /root/c9sdk/server.js --listen 0.0.0.0 --port 8080 -w /home/
Restart=on-failure
Type=simple
User=root

[Install]
WantedBy=multi-user.target
```
Then run these commands :
```bash
systemctl daemon-reload
systemctl start cloud9.service
systemctl status cloud9.service
systemctl enable cloud9.service
```
