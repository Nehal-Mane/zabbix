 sudo mysql
 set global log_bin_trust_function_creators = 0;
 quit;

 (sudo vim /etc/zabbix/zabbix_server.conf)
 sudo systemctl restart zabbix-server zabbix-agent apache2
 sudo systemctl enable zabbix-server zabbix-agent apache2
