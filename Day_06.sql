3. DELETE
- To DELETE all rows from a table at a time.
(OR)
- To DELETE a specific rows from a table by using "WHERE" condition.

-- SYNTAX
==========
DELETE FROM <TABLE_NAME>
WHERE [<CONDITION>];


-- Example -
DELETE FROM STUDENT
WHERE STID = 6;


INSERT INTO STUDENT(STID,SFEE)
VALUES(9,5000);

SQL> INSERT INTO STUDENT(STID,SFEE)
  2  VALUES(9,5000);

1 row created.

SQL> INSERT INTO STUDENT(STID,SFEE)
  2  VALUES(10,5000);

1 row created.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         9 PRIYA                                                                                   6000
         9                                                                                         5000
        10                                                                                         5000
         1 SATYA                          CUTTACK                                                  6000
         2 RABI                           CUTTACK                                                  6000
         3 RAJESH                         BERHAMPUR                                                6000
         4 SAUD                           JAJPUR                                                   6000
         5 TANMAYA                        DHENKANALA                                               6000
         6 TUSHAR                         BHADRAK                                                  6000
         7 RAJESH SAHOO                   BHUBANESWAR                                              6000
         8 AKASH                          BERHAMAPUR                                               6000

11 rows selected.

SQL> DELETE FROM STUDENT
  2  WHERE STUDENTNAME IS NULL;

2 rows deleted.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         9 PRIYA                                                                                   6000
         1 SATYA                          CUTTACK                                                  6000
         2 RABI                           CUTTACK                                                  6000
         3 RAJESH                         BERHAMPUR                                                6000
         4 SAUD                           JAJPUR                                                   6000
         5 TANMAYA                        DHENKANALA                                               6000
         6 TUSHAR                         BHADRAK                                                  6000
         7 RAJESH SAHOO                   BHUBANESWAR                                              6000
         8 AKASH                          BERHAMAPUR                                               6000

9 rows selected.

-- DELETE ALL ROWS FROM A table
SQL> DELETE FROM STUDENT;

9 rows deleted.

SQL> SELECT * FROM STUDENT;

no rows selected

