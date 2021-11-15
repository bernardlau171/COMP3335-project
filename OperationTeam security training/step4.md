# Backup the database

Once attacker hack into the database system, Attacker may damage the data in the database.
To keep the data save before the attacker attack, you can backup data regularly. The time period is recommended at least once per week.

The following step will show the step of backup all the data in the database and retrive it in the same database to show what to do if the data is largely damaged with docker command:

1. copy the volume(the data file of the database) to a .tar file:
`docker run --volumes-from mysqldb -v $(pwd):/backup ubuntu tar cvf /backup/alldata.tar /docker-entrypoint-initdb.d`{{execute}}

2. put the volume you just copy into the container you are running:
`docker run --rm --volumes-from mysqldb -v $(pwd):/backup ubuntu tar xvf /backup/alldata.tar`{{execute}}

3. Data in the backup can be use in the container again.
