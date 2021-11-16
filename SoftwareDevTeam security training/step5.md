Alternative - Connection-Control Plugin

As the attackers would try to crack into the password file or the system, unsuccessful login would be made during the attack. Therefore, the connection control plugin could help providing delay in server response to connection attempts after the consecutive failed attempts which enhanced the database security. 

Install the plugin with the following commands:
`INSTALL PLUGIN CONNECTION_CONTROL
SONAME 'connection_control.so';
INSTALL PLUGIN CONNECTION_CONTROL_FAILED_LOGIN_ATTEMPTS
SONAME 'connection_control.so';`{{excute}}

Check if the installation successed with the following commands: 
`SELECT PLUGIN_NAME, PLUGIN_STATUS
FROM INFORMATION_SCHEMA.PLUGINS
WHERE PLUGIN_NAME LIKE 'connection%';`{{excute}}

Set the environment variables as to control the connection conditions as follows: 
`SET GLOBAL connection_control_failed_connections_threshold = 4;`{{excute}}
`SET GLOBAL connection_control_min_connection_delay = 1500;`{{excute}}

The FAILED_ATTEMPTS and delay could be stated in the database file.


