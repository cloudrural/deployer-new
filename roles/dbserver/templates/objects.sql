CREATE DATABASE {{ MYSQL_DB_NAME }};
INSERT INTO mysql.user (User,Host,authentication_string,ssl_cipher,x509_issuer,x509_subject)
VALUES('{{ MYSQL_DB_USER }}','localhost',PASSWORD('{{ MYSQL_DB_PASS }}'),'','','');
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON {{ MYSQL_DB_NAME }}.* to {{ MYSQL_DB_USER }}@localhost;
FLUSH PRIVILEGES;