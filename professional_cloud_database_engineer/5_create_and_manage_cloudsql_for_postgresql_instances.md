# 5 Create and Manage CloudSQL for PostgreSQL Instances

1. Install `pglogical` extension which provides logical streaming replication for PostgreSQL, using publish/subscribe model.
2. Create user and grant privileges.
3. Create migration job.
4. Promote job
5. Enable point-in-time recovery (PITR) which helps recover an instance to a specific point in time.


## `psql` Command
```
\l              := List databases
\dt             := List tables
\d table_id     := Equal to describe table_id in MySQL
\c db           := Equal to use db in MySQL
\dx             := List extensions
```
