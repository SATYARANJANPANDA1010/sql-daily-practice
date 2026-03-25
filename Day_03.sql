-- 2. ALTER
============
-- To change/modify the structure of table.

-- ALTER-MODIFY
================
-- to change a datatype from one datatype to another datatype and also to change the size of a datatype.

-- SYNTAX
ALTER TABLE <TABLE_NAME>
MODIFY <COLUMN_NAME> <NEW_DATATYPE>[NEW SIZE];

-- Example:
ALTER TABLE STUDENT_DB
MODIFY SNAME VARCHAR2(30);

-- ALTER-ADD
================
-- to add a new column to an existing table.

-- SYNTAX
ALTER TABLE <TABLE_NAME>
ADD <NEW_COLUMN_NAME> <DATA_TYPE> [SIZE OF DATA]

-- Example
ALTER TABLE STUDENT_DB
ADD SADDRESS VARCHAR2(50);

-- ALTER-RENAME
================
-- to CHANGE a column name of existing column.

-- SYNTAX
ALTER TABLE <TABLE_NAME>
RENAME COLUMN <OLD_COLUMN> TO <NEW_COLUMN>;

-- Example
ALTER TABLE STUDENT_DB
RENAME COLUMN SNAME TO STUDENTNAME;

-- ALTER-DROP
================
-- to DROP/DELETE a column from table.

-- SYNTAX
ALTER TABLE <TABLE_NAME>
DROP COLUMN <COLUMN_NAME>;

-- Example
ALTER TABLE STUDENT_DB
DROP COLUMN SFEE;


-- 3. RENAME
=============
 - To change a table name.
 
-- SYNTAX:
===========
RENAME <OLD TABLE NAME> TO <NEW TABLE NAME>;

EXAMPLE:
RENAME STUDENT_DB TO STUDENT;

-- 4. TRUNCATE
=================
-- To delete all rows from a table at a time.
-- To delete rows but not columns.
-- Permanent deletion.
-- Can not delete a specific row from a table.
-- It is not allowed "WHERE" clause condition.

-- SYNTAX
==========
 TRUNCATE TABLE <TABLE_NAME>;

-- Example
===========
TRUNCATE TABLE STUDENT;


-- PRIVILEGE FOR TABLESPACE OR YOU CAN SAY STORAGE
======================================================
-- First you should connect with SYSTEM admin, then you have to write for access TABLESPACE.
-- Then,you can insert data over the table.

-- Enter user-name: system /Satya123
-- Last Successful login time: Wed Mar 25 2026 03:13:26 +05:30

-- Connected to:
-- Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
-- Version 19.3.0.0.0

-- SQL> GRANT UNLIMITED TABLESPACE TO SATYADB;

-- Grant succeeded.



