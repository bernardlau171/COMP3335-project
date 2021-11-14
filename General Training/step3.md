# Accessing the database

The database we are using is mysql database,
to access the database, use the following command to execute a bash shell in the database container:

`docker exec -it mysqldb bash`{{execute}}

Then, login using the following command, in this demo, we are going to login as the root user, use -u to specify the user and -p to specify that it has password:

`mysql -u root -p`{{execute}}

When prompted to enter the password, simply type 12345.

And You have logged into the database!
