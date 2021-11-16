# Database security - Privileges(Cont'd)

First lets revoke all privileges from John and start from the beginning. `REVOKE ALL PRIVILEGES ON *.* from 'John'@'%';`{{execute}}

Because John is in the sales and marketing team, he should be able to add and read contents in the tables.

For easier configuration to later users, we should create roles to address privileges in different teams.

Lets use t1, t2, t3 to represent operation team, software development team and sales and marketing team respectively.

Use the statement `CREATE ROLE 't1','t2','t3';`{{execute}} to create the roles.

For operation team, they should be able to select , insert, update, delete tables in the wordpress database for maintaining operations of the store. Use the statement:`GRANT SELECT,INSERT,UPDATE,DELETE ON wordpress.* TO 't1';`{{execute}}to grant these privileges to the role.

For software development team, they should be able to do anything because it is better for them to work with softwares if they have all privileges on the database, so we use the statement: `GRANT ALL ON *.* TO 't2';`{{execute}} to grant all permissions.

For sales and marketing team, they should be able to insert and select entries from the tables in the wordpress database, but not more, so, we use the statement: `GRANT SELECT,INSERT ON wordpress.* TO 't3';`{{execute}} to grant the needed permissions.

And there we go! We have successfully create the roles needed to assign to different teams.

Lets go back to the example of John, we should assign the role 't3' to him, use the statement:`grant 't3' to 'John';`{{execute}}

Now if we show grants:`show grants for 'John';`{{execute}}, you should see that he only has the privilege of t3. Success! Then, if you grant the appropriate role to different employees, the privilege in this database will be much more clear and secure.
