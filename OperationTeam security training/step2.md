# Database security - Privileges

Principle of Least Privilege(PoLP) is essential in ensuring database security. It basically means that users should only be given enough privileges to do their jobs. Too little privileges will make working in databases inefficient, while too much might lead to potential security concerns. 

For instance, when too much privilege is assigned to users, and if any one of them is malicious, they will be able to read, alter or even delete the tables and databases outside of what they are supposed to do. 

Here is a quick video introducing what Principle of Least Privilege is, and an example of an insider threat when too much privileges is given:
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/mw9fN9mlUS4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

While the operation team does not have to temper with the privileges of the users, there are also things you could do to help to improve the configuration of privileges.

The operation team should have a sweet spot of privileges for them to be working effeciently, for example, you should be able to select, update, delete and insert entries in table.

To check that, say you are William from the operation team, login using the following command:

`mysql -u William -p12345`{{execute}}

Then use the command `show grants;`{{execute}} to show your privileges.

You should see a bunch of privileges popping up, indicating that you might have more privileges than intended. It could mean that privileges in teams or you as an individual case are not well configured, either way, it is advised that you immediately report the case to the IT department for further inspection.

(Please use the command `exit`{{execute}} before moving on to the next step)
