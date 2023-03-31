#!/bin/sh

#!/bin/sh

service mysql start

mysql -sfu root << EOF


CREATE DATABASE ${DB_NAME};
CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

service mysql stop

#mysqld --bind-address=0.0.0.0
#mysqld_safe --skip-networking=false
