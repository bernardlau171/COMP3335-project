# Database security - Privileges

Principle of Least Privilege(PoLP) is essential in ensuring database security. It basically means that users should only be given privileges to do their jobs. Too little privileges will make working in databases inefficient, while too much might lead to potential security concerns. 

For instance, no matter how well protected the software is developed to be by you, the dev team, when too much privilege is assigned to more users, and any one of the accounts are leaked, malicious third party will be able to read, alter or even delete the tables and databases as they like. 

So, PoLP is crucial to decrease the possible loss if such case does happen. Here is a quick video introducing what Principle of Least Privilege is:
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/mw9fN9mlUS4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

To achieve PoLP, we must first check the privileges different users have right now.

The user table's name is "person", so, use the sql statement `select * from users;`{{execute}} to show the list of users in the database

They are assigned to different teams, indicated by the tid, use `select * from team;`{{execute}} to show the list of teams

Now that
