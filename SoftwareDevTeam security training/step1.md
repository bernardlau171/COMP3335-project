The sensitive user’s personal identifiable information will show on the database and the dashboard. Those personal identifiers are the asset.We should hide that on the database and the dashboard of Wordpress/ WooCommerce platform.Therefore,you can follow those steps to prevent the personal identifiers leak. 

First,we need to backup the table of wp_wc_customer_lookup,this table collect the data of the information about the customer. We need to backup those information and do following step. 

'mysqldump -u root -p12345 wordpress wp_wc_customer_lookup > wp_wc_customer_backup.sql' {{execute}}
