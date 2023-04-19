-- This mysql Query creates a user holberton_user who has
-- permission as a REPLICATION CLIENT on all databases
CREATE USER holberton_user@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
-- Enables to check created users
grant Select on mysql.user.* to holberton_user@'localhost';
-- Verify that replica user has Replication permission on the server
SELECT user, Repl_slave_priv FROM mysql.user;
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'holberton_user'@'localhost';
