As acttacker may pretend the user to access our database. Therefore, We should audit log with usesr on the database and the dashboard of Wordpress/ WooCommerce platform. 

Therefore,you can follow those steps to active the audit log to record the event for users.

`SET global general_log = 1;`
`SET global log_output = 'table';`{{execute}} 
