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

-- NOTE:
-- TO RE-EXECUTE THE LAST EXECUTED SQL QUERY IN SQLPLUS EDITOR
SQL> /


-- Example
SQL> INSERT INTO STUDENT(STID,SADDRESS)
  2  VALUES(&STID,&SADDRESS);
Enter value for stid: 7
Enter value for saddress: 'BHUBANESWAR'
old   2: VALUES(&STID,&SADDRESS)
new   2: VALUES(7,'BHUBANESWAR')

1 row created.

================================================================

2. UPDATE
=========
- To UPDATE all rows in a table at a time .
OR
- To UPDATE a specific row data in a table by using "WHERE" condition.
- The SQL UPDATE query is used to modify the existing records in a table.

-- SYNTAX:  
==========
UPDATE <TABLE_NAME>
SET <COLUMN_1> = <VALUE1>,
<COLUMN_2> = <VALUE2> ,
...................
WHERE [<CONDITION>];

-- Example:
============
SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK
         3 RAJESH
         4 SAUD                           JAJPUR
         5 TANMAYA                        DHENKANALA
         6 TUSHAR                         BHADRAK
         7                                BHUBANESWAR

7 rows selected.

SQL> UPDATE STUDENT
  2  SET SFEE = 4500
  3  WHERE SADDRESS = 'CUTTACK';

2 rows updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH
         4 SAUD                           JAJPUR
         5 TANMAYA                        DHENKANALA
         6 TUSHAR                         BHADRAK
         7                                BHUBANESWAR

7 rows selected.

SQL> UPDATE STUDENT
  2  SET SADDRESS = 'BERHAMPUR'
  3  WHERE STID=3;

1 row updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR
         4 SAUD                           JAJPUR
         5 TANMAYA                        DHENKANALA
         6 TUSHAR                         BHADRAK
         7                                BHUBANESWAR

7 rows selected.

SQL> UPDATE STUDENT
  2  SET STUDENTNAME = 'RAJESH SAHOO'
  3  WHERE STID = 7;

1 row updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR
         4 SAUD                           JAJPUR
         5 TANMAYA                        DHENKANALA
         6 TUSHAR                         BHADRAK
         7 RAJESH SAHOO                   BHUBANESWAR

7 rows selected.

SQL> UPDATE STUDENT
  2  SET SFEE = 4500;

7 rows updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  4500
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500

7 rows selected.

SQL> INSERT INTO STUDENT(STID)
  2  VALUES (8);

1 row created.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  4500
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500
         8

8 rows selected.


SQL> UPDATE STUDENT
  2  SET STUDENTNAME = 'AKASH',
  3  SADDRESS = 'BERHAMAPUR',
  4  SFEE = 4500
  5  WHERE STID = 8;

1 row updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  4500
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500
         8 AKASH                          BERHAMAPUR                                               4500

8 rows selected.

