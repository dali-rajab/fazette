Save this config file as `/etc/apache2/conf-available/robotos-txt.conf`
```apacheconf 
<Location "/robots.txt">
        SetHandler None
        Require all granted
</Location>
Alias /robots.txt /home/all-vhosts-robots.txt
```
Do not forget to create the `/home/all-vhosts-robots.txt` file, and to run the following command :

```bash
systemctl reload apache2
```
