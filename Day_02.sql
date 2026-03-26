-- ORACLE USERID & password
	USERID - SATYADB
	Passw - Satya123

-- 1. DDL (DATA DEFINITION LANGUAGE)
	1. CREATE
	2. ALTER
	3. DROP
	4. TRUNCATE
-- New Features
	1. RECYCLEBIN
	2. FLASHBACK
	3. PURGE
-- 1. CREATE :
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
=================================================================================
CREATE TABLE STUDENT_DB
(
	STID INT,
	SNAME VARCHAR(10),
	SFEE NUMBER(6,2)
);


SQL> DESC STUDENT_DB;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STID                                               NUMBER(38)
 SNAME                                              VARCHAR2(10)
 SFEE                                               NUMBER(6,2)


=========================================================================
-- To view the Structure of the TABLE :
-- Syntax
===========
DESC <TABLE NAME>;

-- DESC stands for Describe.

Example -  
DESC STUDENT_DB;


