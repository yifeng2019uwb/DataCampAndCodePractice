/*
Managing views

Granting and revoking access to a view
GRANT privilege(s) or REVOKE privilege(s)
ON object
TO role or FROM role
	- Privileges: SELECT, INSERT, UPDATE, DELETED, etc
	- Objects: table, view, schema, etc
	- Roles: a database user or a group of database users

Granting and revoking example:

GRANT UPDATA ON ratings to PUBLIC;
REVOKE INSERT ON films FROM db_user;


Updating a view

UPDATE films SET kind= 'Dramatic' WHERE kind = 'Drama'
	VALUES ('T_601', 'Yojimbo', 106, '1961-06-16', 'Drama')

Not all views are updateable
	- View is made up of one table
	- Doesn't use a window or aggregate function

Not all views are insertable

TAKEAWAY: avoid modifying data throught views


Dropping a view

DROP VIEW view_name [CASCADE | RESTRICT]

	- RESTRICK(default): returns an error if there are objects that depend on the view
	- CASCADE: drops view and any object that depends on that view

Redefining a view

CREATE OR REPLACE VIEW view_name AD new_query

	- If a view with view_name exists, it is replaced
	- new_query must generate the same column names, order, and data types as the old query
	- The column output may be different
	- New columns may be added at the end



*/







