-- 2. ALTER
============
-- To change/modify the structure of table.

-- ALTER-MODIFY
================
-- to change a datatype from one datatype to another datatype and also to change the size of a datatype.

-- SYNTAX
ALTER TABLE <TABLE_NAME>
MODIFY <COLUMN_NAME> <NEW_DATATYPE><NEW SIZE>;

-- Example:
ALTER TABLE STUDENT_DB
MODIFY SNAME VARCHAR2(30);
