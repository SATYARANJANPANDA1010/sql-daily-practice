2. UPDATE

-- SYNTAX:  
==========
UPDATE <TABLE_NAME>
SET <COLUMN_1> = <VALUE1>,
<COLUMN_2> = <VALUE2> ,
...................
WHERE [<CONDITION>];



SQL> INSERT INTO STUDENT(STID,STUDENTNAME)
  2  VALUES(9,'PRIYA');

1 row created.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         9 PRIYA
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  5000
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500
         8 AKASH                          BERHAMAPUR                                               4500

9 rows selected.

SQL> UPDATE STUDENT
  2  SET SFEE = 8000
  3  WHERE SFEE = NULL;

0 rows updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         9 PRIYA
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  5000
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500
         8 AKASH                          BERHAMAPUR                                               4500

9 rows selected.

-- NOTE
👉 = NULL is wrong / does not work properly in SQL
👉 IS NULL is the correct way to check for NULL values

SQL> UPDATE STUDENT
  2  SET SFEE = 6000
  3  WHERE SFEE IS NULL;

1 row updated.

SQL> SELECT * FROM STUDENT;

      STID STUDENTNAME                    SADDRESS                                                 SFEE
---------- ------------------------------ -------------------------------------------------- ----------
         9 PRIYA                                                                                   6000
         1 SATYA                          CUTTACK                                                  4500
         2 RABI                           CUTTACK                                                  4500
         3 RAJESH                         BERHAMPUR                                                4500
         4 SAUD                           JAJPUR                                                   4500
         5 TANMAYA                        DHENKANALA                                               4500
         6 TUSHAR                         BHADRAK                                                  5000
         7 RAJESH SAHOO                   BHUBANESWAR                                              4500
         8 AKASH                          BERHAMAPUR                                               4500

9 rows selected.