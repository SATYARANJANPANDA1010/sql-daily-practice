-- DML (DATA MANIPULATION LANGUAGE)
	1. INSERT
	2. UPDATE
	3. DELETE

-- New Features
	1. INSERT ALL
	2. MERGE
	
1. INSERT
==========
- To insert a new row into a table.
- In your table exactly howmany columns are present, that many values you need to insert. 

-- SYNTAX
===========
INSERT INTO <TABLE_NAME>
VALUES(.....);

-- Example
============
INSERT INTO STUDENT
VALUES(1,'SATYA','CUTTACK');

-- SYNTAX: When you want to insert values into Specific COLUMNS
===============================================================
INSERT INTO <TABLE_NAME> ([REQ. COLUMN1],[RE1. COLUMN2])
VALUES(V1,V2);

-- Example:
============
INSERT INTO STUDENT(STID,STUDENTNAME)
VALUES(3,'RAJESH');