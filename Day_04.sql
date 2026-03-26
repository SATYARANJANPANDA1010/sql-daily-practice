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

-- SYNTAX: If you want to insert values into Specific COLUMNS
===============================================================
INSERT INTO <TABLE_NAME> ([REQ. COLUMN1],[RE1. COLUMN2])
VALUES(V1,V2);

-- Example:
============
INSERT INTO STUDENT(STID,STUDENTNAME)
VALUES(3,'RAJESH');

-- SYNTAX: If you want to insert Multiple Rows into a Table 
============================================================
-- In ORACLE : & --> To insert values dynamically, that is called substituonal Operator
========================================================================================
INSERT INTO <TABLE_NAME>
VALUES(&<COLUMN NAME1>,&<COLUMN NAME2>,............);

-- Example:
=============
INSERT INTO STUDENT 
VALUES(&STID,&STUDENTNAME,&SADDRESS);


Enter value for stid: 4
Enter value for studentname: 'SAUD'
Enter value for saddress: 'JAJPUR'
old   2: VALUES(&STID,&STUDENTNAME,&SADDRESS)
new   2: VALUES(4,'SAUD','JAJPUR')

1 row created.

============================================================
-- SYNTAX: If you want to insert Multiple Rows into a Table 
============================================================
-- In POSTGRES
===============
INSERT INTO <TABLE_NAME>
VALUES
(V1,V2,.....),
(V1,V2,.....),
(V1,V2,.....),
(V1,V2,.....);
============================================================
  