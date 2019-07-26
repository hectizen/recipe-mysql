## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE hj_dev;
CREATE DATABASE hj_prod;

#Create database service accounts
CREATE USER 'hj_dev_user'@'localhost' IDENTIFIED BY 'hjpwd';
CREATE USER 'hj_prod_user'@'localhost' IDENTIFIED BY 'hjpwd';
CREATE USER 'hj_dev_user'@'%' IDENTIFIED BY 'hjpwd';
CREATE USER 'hj_prod_user'@'%' IDENTIFIED BY 'hjpwd';

#Database grants
GRANT SELECT ON hj_dev.* to 'hj_dev_user'@'localhost';
GRANT INSERT ON hj_dev.* to 'hj_dev_user'@'localhost';
GRANT DELETE ON hj_dev.* to 'hj_dev_user'@'localhost';
GRANT UPDATE ON hj_dev.* to 'hj_dev_user'@'localhost';
GRANT SELECT ON hj_prod.* to 'hj_prod_user'@'localhost';
GRANT INSERT ON hj_prod.* to 'hj_prod_user'@'localhost';
GRANT DELETE ON hj_prod.* to 'hj_prod_user'@'localhost';
GRANT UPDATE ON hj_prod.* to 'hj_prod_user'@'localhost';
GRANT SELECT ON hj_dev.* to 'hj_dev_user'@'%';
GRANT INSERT ON hj_dev.* to 'hj_dev_user'@'%';
GRANT DELETE ON hj_dev.* to 'hj_dev_user'@'%';
GRANT UPDATE ON hj_dev.* to 'hj_dev_user'@'%';
GRANT SELECT ON hj_prod.* to 'hj_prod_user'@'%';
GRANT INSERT ON hj_prod.* to 'hj_prod_user'@'%';
GRANT DELETE ON hj_prod.* to 'hj_prod_user'@'%';
GRANT UPDATE ON hj_prod.* to 'hj_prod_user'@'%';
