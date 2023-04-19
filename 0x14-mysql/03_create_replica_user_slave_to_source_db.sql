create user 'replica_user'@'%' identified by 'replica_password';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'replica_server_ip';
SELECT user, Repl_slave_priv FROM mysql.user;

