sudo wget https://repo.zabbix.com/zabbix/6.3/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.3-3%2Bubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.3-3+ubuntu22.04_all.deb
sudo apt update -y

sudo apt-get install mysql-server -y
sudo systemctl start mysql
sudo mysql

 Create database zabbix character set utf8mb4 collate utf8mb4_bin;
 Create user zabbix@localhost identified by 'zabbix';
 grant all privileges on zabbix.* to zabbix@localhost;
 set global log_bin_trust_function_creators = 1;
 quit;

 sudo zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p zabbix


