-- ORACLE USERID & password
	USERID - SATYADB
	Passw - Satya123

-- 1. DDL (DATA DEFINITION LANGUAGE)
	1. CREATE
	2. DROP
	3. ALTER
	4. TRUNCATE
-- New Features
	1. RECYCLEBIN
	2. PURGE
	3. FLASHBACK
	
CREATE :
=========
- TO CREATE A NEW DATABASE OBJECT IN ORACLE.
	EX: TABLES, VIEWS, SYNONYMS, PROCEDURE, FUNCTION, TRIGGER .. etc
- to create a new table in oracle db.

SYNTAX to create a new table in Oracle db:
==========================================
syntax:
=======
CREATE TABLE <TABLE NAME>(
	<COL NAME1><DATA TYPE>[SIZE],
	<COL NAME2><DATA TYPE>[SIZE],
	...........................
	
);

DATATYPES:
==========
1. INTEGER DATATYPES
2. STRING DATATYPES / CHARACTER DATATYPES
3. DATE DATATYPES
4. LONG DATATYPES	
	- In ORACLE  LONG Datatypes has deprecated, largely it is not used.
	- Instead of LONG DATATYPES, CLOB(CHARACTER LARGE OBJECT) Used.
4. RAW & LONG RAW DATATYPES
5. LOB (LARGE OBJECT) DATATYPES
	CLOB (CHARACTER LARGE OBJECT)
    BLOB (BINARY LARGE OBJECT)
	
===============================================
SELECT * FROM TAB;
-- It contains meta data about table in current user's schema.

CREATE TABLE STUDENT_DB
(
	STID INT,
	SNAME VARCHAR(10),
	SFEE NUMBER(6,2)
);

=========================================================================
-- In ORACLE, if you want to CREATE  a table - you need a permission to CREATE a table.
Enter user-name: system/Satya123
Last Successful login time: Tue Feb 24 2026 09:05:12 +05:30

Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> GRANT CREATE TABLE TO SATYADB;

Grant succeeded.

SQL> CONN
Enter user-name: SATYADB
Enter password:
Connected.
=========================================================================
