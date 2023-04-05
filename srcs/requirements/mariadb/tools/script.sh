#!/bin/sh

service mysql start

cat << EOF > /usr/local/bin/cr_db.sql

CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
EOF

mysql < /usr/local/bin/cr_db.sql

service mysql stop
