```apacheconf 
<Location "/robots.txt">
        SetHandler None
        Require all granted
</Location>
Alias /robots.txt /home/all-vhosts-robots.txt
```
