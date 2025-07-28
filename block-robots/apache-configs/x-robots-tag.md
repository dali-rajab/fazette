Make sure that the module Headers is enabled
```bash
a2enmod headers
```

Save this config file as `/etc/apache2/conf-available/x-robots-tag.conf`
```apacheconf 
Header set X-Robots-Tag "noindex, nofollow"
```
Do not forget to run the following commands :

```bash
a2enconf x-robots-tag
systemctl reload apache2
```
