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

-- DELETE vs TRUNCATE

DELETE																	TRUNCATE
=====================================================                   ============================================
1. Can DELETE a specific row.											1. CAN not Delete a specific row.												
2. Supporting "WHERE" CONDITION											2. In TRUNCATE command, "WHERE" clause does not supported.
3. It is Temporary deletion.											3. Permanent DELETION.
4. We can Restore data by using "ROLLBACK".								4. In TRUNCATE command, there is no chance to revert back the DATA.
5. Internal Execution speed is slow,									5. Execution SPEED is Fast (AS a PAGE(SET ROWS))
because Deletion has done by (ONE-BY-ONE ROW).


3. DATA RETRIEVAL/ QUERY LANGUAGE(DRL/DQL):
============================================
-- SELECT
=========
- To retireve or read all rows from a table at a time.
(OR)
- To retrieve a specific row from a table by using "WHERE" conditions.

--SYNTAX:
=========
SELECT */ <LIST OF COLUMNS> 
FROM <TABLE_NAME>
WHERE [<CONDITIONS>];

-- Example:
CREATE TABLE EMP
(
  EMPNO NUMBER(4) NOT NULL,
  ENAME VARCHAR2(10),
  JOB VARCHAR2(9),
  MGR NUMBER(4),
  HIREDATE DATE,
  SAL NUMBER(7,2),
  COMM NUMBER(7,2),
  DEPTNO NUMBER(2)
);


INSERT INTO EMP VALUES
(7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-DEC-1980', 'DD-MON-YYYY'), 800, NULL, 20);

INSERT INTO EMP VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, TO_DATE('20-FEB-1981', 'DD-MON-YYYY'), 1600, 300, 30);

INSERT INTO EMP VALUES
(7521, 'WARD', 'SALESMAN', 7698, TO_DATE('22-FEB-1981', 'DD-MON-YYYY'), 1250, 500, 30);

INSERT INTO EMP VALUES
(7566, 'JONES', 'MANAGER', 7839, TO_DATE('02-APR-1981', 'DD-MON-YYYY'), 2975, NULL, 20);

INSERT INTO EMP VALUES
(7654, 'MARTIN', 'SALESMAN', 7698, TO_DATE('28-SEP-1981', 'DD-MON-YYYY'), 1250, 1400, 30);

INSERT INTO EMP VALUES
(7698, 'BLAKE', 'MANAGER', 7839, TO_DATE('01-MAY-1981', 'DD-MON-YYYY'), 2850, NULL, 30);

INSERT INTO EMP VALUES
(7782, 'CLARK', 'MANAGER', 7839, TO_DATE('09-JUN-1981', 'DD-MON-YYYY'), 2450, NULL, 10);

INSERT INTO EMP VALUES
(7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('09-DEC-1982', 'DD-MON-YYYY'), 3000, NULL, 20);

INSERT INTO EMP VALUES
(7839, 'KING', 'PRESIDENT', NULL, TO_DATE('17-NOV-1981', 'DD-MON-YYYY'), 5000, NULL, 10);

INSERT INTO EMP VALUES
(7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('08-SEP-1981', 'DD-MON-YYYY'), 1500, 0, 30);

INSERT INTO EMP VALUES
(7876, 'ADAMS', 'CLERK', 7788, TO_DATE('12-JAN-1983', 'DD-MON-YYYY'), 1100, NULL, 20);

INSERT INTO EMP VALUES
(7900, 'JAMES', 'CLERK', 7698, TO_DATE('03-DEC-1981', 'DD-MON-YYYY'), 950, NULL, 30);

INSERT INTO EMP VALUES
(7902, 'FORD', 'ANALYST', 7566, TO_DATE('03-DEC-1981', 'DD-MON-YYYY'), 3000, NULL, 20);

INSERT INTO EMP VALUES
(7934, 'MILLER', 'CLERK', 7782, TO_DATE('23-JAN-1982', 'DD-MON-YYYY'), 1300, NULL, 10);

COMMIT;
==========================
CREATE TABLE DEPT
(
  DEPTNO NUMBER(2),
  DNAME VARCHAR2(14),
  LOC VARCHAR2(13)
);

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

COMMIT;
========================== 
SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

-- NOTE: * IS NOTHING BUT LIST OF COLUMNS


-- Specific Record if you want to Retrieve:
SQL> SELECT * FROM DEPT
  2  WHERE DEPTNO = 30;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        30 SALES          CHICAGO
		
SQL> SELECT * FROM EMP
  2  WHERE  JOB = 'MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

-- Only the people whose COMM is NULL:	  
SQL> SELECT * FROM EMP
  2  WHERE COMM IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

10 rows selected.
