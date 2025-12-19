# Backup the PHP.INI file
docker cp afed2c7d035b:/etc/php/8.3/apache2/php.ini .

# Restore the PHP.INI
docker cp php.ini afed2c7d035b:/etc/php/8.3/apache2/
docker exec -it afed2c7d035b ls -l /etc/php/8.3/apache2/php.ini
docker exec -it afed2c7d035b chown root:root /etc/php/8.3/apache2/php.ini
docker exec -it afed2c7d035b service apache2 restart

