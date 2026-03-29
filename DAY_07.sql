-- PAGESIZE
-- SYNTAX:
=======
SET PAGESIZE n;

Example:
=========
SET PAGESIZE 300;

-- LINES
--SYNTAX:
========
SET LINES n;

Example:
========
SET LINES 300;


--NOTE:
=========
-- In Each page a SQL Plus editor can display Maximum 50000 of  rows.
	-- SET PAGESIZE 50000;
	
-- In one line you can set 32767 characters.
	-- 1 byte -- 1 CHAR
	-- That means, In one line you can store 32767 characters.


-- CONCATENATION OPERATOR ( || ) :
===================================
 -- To ADD two string expressions.

-- SYNTAX:
==========
	<STRING1> || <STRING2>
-- Example:
=============
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

SQL> SELECT 'Mr.' ||ENAME FROM EMP;

'MR.'||ENAME
-------------
Mr.SMITH
Mr.ALLEN
Mr.WARD
Mr.JONES
Mr.MARTIN
Mr.BLAKE
Mr.CLARK
Mr.SCOTT
Mr.KING
Mr.TURNER
Mr.ADAMS
Mr.JAMES
Mr.FORD
Mr.MILLER

14 rows selected.

SQL> SELECT 'Mr.'||ENAME||'Is Working as a'||JOB FROM EMP;

'MR.'||ENAME||'ISWORKINGASA'||JOB
-------------------------------------
Mr.SMITHIs Working as aCLERK
Mr.ALLENIs Working as aSALESMAN
Mr.WARDIs Working as aSALESMAN
Mr.JONESIs Working as aMANAGER
Mr.MARTINIs Working as aSALESMAN
Mr.BLAKEIs Working as aMANAGER
Mr.CLARKIs Working as aMANAGER
Mr.SCOTTIs Working as aANALYST
Mr.KINGIs Working as aPRESIDENT
Mr.TURNERIs Working as aSALESMAN
Mr.ADAMSIs Working as aCLERK
Mr.JAMESIs Working as aCLERK
Mr.FORDIs Working as aANALYST
Mr.MILLERIs Working as aCLERK

14 rows selected.

SQL> SELECT 'Mr.'||ENAME||' '||'Is Working as a'||' '||JOB FROM EMP;

'MR.'||ENAME||''||'ISWORKINGASA'||''||J
---------------------------------------
Mr.SMITH Is Working as a CLERK
Mr.ALLEN Is Working as a SALESMAN
Mr.WARD Is Working as a SALESMAN
Mr.JONES Is Working as a MANAGER
Mr.MARTIN Is Working as a SALESMAN
Mr.BLAKE Is Working as a MANAGER
Mr.CLARK Is Working as a MANAGER
Mr.SCOTT Is Working as a ANALYST
Mr.KING Is Working as a PRESIDENT
Mr.TURNER Is Working as a SALESMAN
Mr.ADAMS Is Working as a CLERK
Mr.JAMES Is Working as a CLERK
Mr.FORD Is Working as a ANALYST
Mr.MILLER Is Working as a CLERK

14 rows selected.


