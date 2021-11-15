# Database security - Privileges

An appropriate amount of privileges for different staff on different positions is very important in ensuring database security. 

Too little privileges will make working in databases inefficient, while too much might lead to potential security concerns. 

For instance, no matter how well protected the software is developed to be by you, the dev team, when too much privilege is assigned to more users, and any one of the accounts are leaked, malicious third party will be able to alter the database as they like. 

So, minimizing privileges is essential to decrease the possible loss if such case does happen.


To achieve that, we first check the privileges different users have right now.

The user table's name is "person", so, use the sql statement `select * from users;`{{execute}} to show the list of users in the database

They are assigned to different teams, indicated by the tid, use `select * from team;`{{execute}} to show the list of teams
