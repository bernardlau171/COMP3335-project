# Backup the database

Once attacker hack into the database system, Attacker may damage the data in the database.
To keep the data save before the attacker attack, you can backup data regularly. The time period is recommended at least once per week.

The following step will show the step of backup all the data in the database and retrive it in the same database to show what to do if the data is largely damaged with docker command with root account:
1. get into the directory(volume of mysqldb):
`cd /docker-entrypoint-initdb.d`{{execute}}

2. backup the mysqldb into a .sql file(root password default as "12345"):
`mysqldump -u root -p --all-databases > backup.sql;`{{execute}}

3. check whether there are a .sql file called "backup":
`ls`{{execute}}

4. exit the container:
`exit`{{execute}}

5. copy the data file of the database to a .sql file:
`docker run --rm --volumes-from mysqldb -v $(pwd):/backup ubuntu tar cvf /backup/alldata.sql /docker-entrypoint-initdb.d/backup.sql`{{execute}}

6. check whether there is a .sql file called "alldata"
`ls`{{execute}}

7. get into the container:
`docker exec -it mysqldb bash`{{execute}}

8. get into the directory(volume of mysqldb):
`cd /docker-entrypoint-initdb.d`{{execute}}

9. remove the backup file:
`rm backup.sql`{{execute}}

10. check whether there are a .sql file called "backup". if no .sql file called "backup", it is true:
`ls`{{execute}}

11. exit the container:
`exit`{{execute}}

12. put the data you just copy into the container you are running:
`docker run --rm --volumes-from mysqldb -v $(pwd):/backup ubuntu tar xvf /backup/alldata.sql`{{execute}}

13.get into the container:
`docker exec -it mysqldb bash`{{execute}}

14.get into the directory(volume of mysqldb):
`cd /docker-entrypoint-initdb.d`{{execute}}

15.check whether there are a .sql file called "backup". if yes .sql file called "backup", it is true:
`ls`{{execute}}

16.get into the outer directory:
`cd ..`{{execute}}

17.let the mysql use the data in the backup file:
`mysql -u root -p < docker-entrypoint-initdb.d/backup.sql`{{execute}}

18.done
