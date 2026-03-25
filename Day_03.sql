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

