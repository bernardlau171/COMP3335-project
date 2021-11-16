As acttacker may pretend the user to access our database. Therefore, We should audit log with usesr on the database and the dashboard of Wordpress/ WooCommerce platform. 

Therefore,you can follow those steps to active the audit log to record the event for users.

We can use the follow command to enable the general log in the database.
`SET global general_log c 1;`{{execute}}
 
log_output system variable specifies the destination for log output. We can choose value from TABLE or FILE. Here we will use the table to display the general log. The follow command is used to choose table for the general log;
`SET global log_output = 'table';`{{execute}} 
