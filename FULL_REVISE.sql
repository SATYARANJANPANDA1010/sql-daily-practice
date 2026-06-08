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
	
