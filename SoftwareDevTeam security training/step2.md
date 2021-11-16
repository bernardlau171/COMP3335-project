# Database security - Privileges

Principle of Least Privilege(PoLP) is essential in ensuring database security. It basically means that users should only be given enough privileges to do their jobs. Too little privileges will make working in databases inefficient, while too much might lead to potential security concerns. 

For instance, no matter how well protected the software is developed to be by you, the dev team, when too much privilege is assigned to users, and if any one of them is malicious, they will be able to read, alter or even delete the tables and databases outside of what they are supposed to do. 

Here is a quick video introducing what Principle of Least Privilege is, and an example of an insider threat when too much privileges is given:
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/mw9fN9mlUS4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

To achieve PoLP, we must first check the privileges different users have right now.

(If you haven't login, use the command `mysql -u root -p` and the password 12345 to login)

Use the default mysql database wordpress by this statement: `use wordpress`{{execute}}

In the hypothetical scenario,

The user table's name is "person", so, use the sql statement `select * from person;`{{execute}} to show the list of users in the database

They are assigned to different teams, indicated by the tid, use `select * from team;`{{execute}} to show the list of teams

Now that we know what team each user is in, we can start configuring the privileges. Lets choose John from the sales and marketing team as an example.

Use the statement `show grants for 'John';`{{execute}} to show what privileges has been granted.

You should see a bunch of privileges being assigned to him because the privileges in this database is not well configured, lets try to fix it!

