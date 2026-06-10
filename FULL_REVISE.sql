- STRUCTURED QUERY LANGUAGE (SQL)
- SQL IS Created by IBM.
==========================
SUB LANGUAGE OF SQL:
1. DDL (DATA DEFINITION LANGUAGE)
	i. 		CREATE
	ii. 	ALTER
	iii. 	RENAME
	iv. 	TRUNCATE
	v. 		DROP
	-- NEW FEATURES
	i.   	RECYCLEBIN
	ii.  	FLASHBACK
	iii. 	PURGE
2. DML (DATA MANIPULATION LANGUAGE)
	i. 		INSERT
	ii. 	UPDATE
	iii. 	DELETE
	-- NEW FEATURES
	i.   	INSERT ALL
	ii.  	MERGE
3. DQL/DRL (DATA QUERY LANGUAGE) (DATA RETRIEVAL LANGUAGE)
	i. 		SELECT
4. TCL (TRANSACTION CONTROL LANGUAGE)
	i. 		COMMIT
	ii.		ROLLBACK
	iii.	SAVEPOINT
5. DCL (DATA CONTROL LANGUAGE)
	i.  	GRANT
	ii.		REVOKE

=======================================================
1. DDL

i. CREATE
CREATE TABLE [TABLE NAME]
(
	[COLUMN1] <DATA TYPE>[SIZE] <CONSTRAINT>,
	[COLUMN2] <DATA TYPE>[SIZE] <CONSTRAINT>,
	......................
);

DATATYPE:
=======
1. INTEGER DATA TYPE 
	i. INTEGER/INT
	ii. NUMBER(P,S)
		-- P - PRECISION (Counting all digits like left and right side of total digits) 
			exp: 56.24 
				- Total PRECISION would be 4.
		-- S - SCALE (Counting only right digits of a number)
			exp: 56.24
				- Total SCALE would be 2.
	iii. Character / String Datatypes
		- 	 Storing String format data only.
		- 	 String can be represented with ' '.
		- 	 Collection of character is called string.
		-	 Single Quotes are allowed ' ', not double quotes " ".
		- 	 Characters Only & Alpha Numeric String
		i. 		CHAR          (NON-UNICODE)
		ii. 	VARCHAR		  (NON-UNICODE)
		iii.	NCHAR		  (UNICODE)
		iv.		NVARCHAR	  (UNICODE)
	iv. 	LONG DATATYPE
	v.		DATE & TIME
	vi. 	TIMESTAMP
	vii.	RAW & LONG RAW
	viii.	CLOB , NCLOB & BLOB DATATYPE

PRACTICE QUERY:
=================

SQL> SELECT * FROM TAB;

TNAME
--------------------------------------------------------------------------------
TABTYPE        CLUSTERID
------------- ----------
EMP
TABLE

DEPT
TABLE

SALGRADE
TABLE


TNAME
--------------------------------------------------------------------------------
TABTYPE        CLUSTERID
------------- ----------
STUDENT
TABLE


SQL> DESC EMP;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> DESC DEPT;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                             NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)

SQL> DESC SALGRADE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GRADE                                              NUMBER
 LOSAL                                              NUMBER
 HISAL                                              NUMBER
 
 --------------------------------------------------------------------------------
 ALTER: 
  - To change/modify the structure a table.
 ALTER-MODIFY:
 - To change a datatype from one datatype to another.
 SYNTAX: 
	ALTER TABLE <TABLE NAME>
	MODIFY <COLUMN NAME> <NEW DATATYPE> [NEW SIZE];

ALTER - ADD:
	- To add a new column to an existing table.
SYNTAX:
	ALTER TABLE <TABLE NAME>
	ADD <NEW COLUMN> <DATATYPE>[SIZE];
	
ALTER - RENAME:
	- To change a column name in a table.
SYNTAX:
	ALTER TABLE <TABLE NAME>
	RENAME COLUMN <OLD COLUMN NAME> TO <NEW COLUMN NAME>;
ALTER - DROP:
 - Drop/Delete a column from table.
	ALTER TABLE <TABLE NAME>
	DROP COLUMN <COLUMN NAME>

RENAME:
	- To change a table name.
	SYNTAX:
		RENAME <OLD TABLE NAME> TO <NEW TABLE NAME>;

TRUNCATE:
	- To delete all rows from a table at a time.
	- TO DELETE rows but not columns.
	- The data will permanent deletion.
	- Using TRUNCATE , we can not delete a specific rows from a table.
	- Not allowed "WHERE" clause condition.
	SYNTAX:
		TRUNCATE TABLE <TABLE NAME>;
	
 
	
