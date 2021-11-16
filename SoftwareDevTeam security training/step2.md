# Database security - Privileges

Principle of Least Privilege(PoLP) is essential in ensuring database security. It basically means that users should only be given enough privileges to do their jobs. Too little privileges will make working in databases inefficient, while too much might lead to potential security concerns. 

For instance, no matter how well protected the software is developed to be by you, the dev team, when too much privilege is assigned to users, and if any one of them is malicious, they will be able to read, alter or even delete the tables and databases outside of what they are supposed to do. 

Here is a quick video introducing what Principle of Least Privilege is, and an example of an insider threat when too much privileges is given:
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/mw9fN9mlUS4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

To achieve PoLP, we must first check the privileges different users have right now.

In the hypothetical scenario,

The user table's name is "person", so, use the sql statement `select * from users;`{{execute}} to show the list of users in the database

They are assigned to different teams, indicated by the tid, use `select * from team;`{{execute}} to show the list of teams

Now that we know what team each user is in, we can start configuring the privileges. Lets choose  from the software development team as an example.

Use the statement `show grants for 'John';`{{execute}} to show what privileges has been granted.

You should see a bunch of privileges being assigned to him because the privileges in this database is not well configured, lets try to fix it!

First lets revoke all privileges from John and start from the beginning. `REVOKE ALL PRIVILEGES ON *.* from 'John'@'%';`{{execute}}

Because John is in the sales and marketing team, he should be able to temper with the contents in the table, but not the database.

For easier configuration to later users, we should create roles to address privileges in different teams.

Lets use t1, t2, t3 to represent operation team, software development team and sales and marketing team respectively.

use the statement `CREATE ROLE 't1','t2','t3';`{{execute}} to create the roles.

For operation team, they should be able to  use the select , insert, update, delete tables for maintaining operations of the store. Use the statement:`GRANT SELECT,INSERT,UPDATE,DELETE ON wordpress.* TO 't1';`{{execute}}to grant these privileges to the role.

For software development team, they should be able to do anything because it is better for them to work with softwares if they have all privileges on the database, so we use the statement: `GRANT ALL ON *.* TO 't2';`{{execute}} to grant all permissions.

For sales and marketing team, they should be able to insert and select entries from the tables, but not more, so, we use the statement: `GRANT SELECT,INSERT ON wordpress.* TO 'staff';`{{execute}} to grant the needed permissions.

And there we go! We have successfully create the roles needed to assign to different teams.

Lets go back to the example of John, we should assign the role 't3' to him, use the statement:`grant 't3' to 'John';`{{execute}}

Now if we show grants:`show grants for 'John';`{{execute}}, you should see that he only has the privilege of t3. Success! Then, if you grant the appropriate role to different employees, the privilege in this database will be much more clear and secure.

