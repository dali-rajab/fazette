# MailCatcher run at linux startup

Create a file /etc/systemd/system/mailcatcher.service :
```ini
# /etc/systemd/system/mailcatcher.service
[Unit]
Description=Ruby MailCatcher
Documentation=http://mailcatcher.me/

[Service]
Type=simple
ExecStart=/usr/local/bin/mailcatcher --foreground
Restart=always

[Install]
WantedBy=multi-user.target
```
Then run these commands :
```bash
systemctl daemon-reload
systemctl start mailcatcher.service
systemctl status mailcatcher.service
systemctl enable mailcatcher.service
```


