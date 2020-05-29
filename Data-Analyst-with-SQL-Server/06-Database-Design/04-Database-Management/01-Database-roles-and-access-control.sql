/*
Database roles and access control

Granting and revoking access to a view

GRANT privilege(s) or REVOKE privilege(s)

ON object

To role of From role

	- Privileges: SELECT, INSERT, UPDATE, DELETE, etc
	- Objects: table, view, schema, etc.
	- Roles: a database user or a group of database users

GRANT UPDATE ON rating TO PUBLIC
REVOKE INSERT ON films FROM db_user


Database roles
. Manage database access permission
. A database roles is an entity that contains information that:
	- Define the role's privileges
		- Can you login?
		- Can you create dababase?
		- Can you write to tables?
	- Interact with the client authentication system
		- Password
. Roles can be assigned to one or more users
. Roles are global across a database cluster installation


Create a role
. Empty role
	CREATE ROLE data_analyst;

. Roles with some attributes set
	CREATE ROLE intern WITH PASSWORD 'PasswordForIntern' VALID UNTIL '2020-01-01';

	CREATE ROLE admin CREATEDB;

	ALTER ROLE admin CREATEROLE;


GRANT and REVOKE privileges from roles

GRANT UPDATE ON rating To data_analyst;

REVOKE UPDATE ON tatings FROM data_analyst;

The available privilegs in PostgteSQL are:
	. SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFRENCE, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE


Users and groups(are bothe roles)
. A rols is an entity that can function as a user and/or group
	- User roles
	- Group roles

Group role
	CREATE ROLE data_analyst

User role
	CREATE ROLE alex WITH PASSWORD 'PasswordForIntern' VALID UNTIL '2020-01-01'

	GRANT data_analyst TO alex

	REVOKE data_analyst FROM alex;


Common PostgreSQL roles

role 						Allowed access
pg_read-all_settings		Read al configuration variables, even those normally visible only to superusers

pg_read_all_stats			Read all pg_Stat_* views and use various statistics related extensin, even those normally visible only to superusers

pg_signal_backend			Send signals to other backends (eg: cancel query, terminate)

More


Benefits and pitfalls of roles
Benefits
	- Roles live on after users are deleted
	- Roles can be created before user accounts
	- Save DBAs time

Pitfalls
	- Sometimes a rols gibes a specific user too much access
		- You need to pay attention



*/








