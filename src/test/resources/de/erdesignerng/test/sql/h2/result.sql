CREATE SCHEMA SCHEMAA authorization SA;CREATE SCHEMA SCHEMAB authorization SA;CREATE CACHED TABLE SCHEMAA.TABLE1 (	TB1_1 varchar(20) NOT NULL,	TB1_2 varchar(100) DEFAULT 'Test',	TB1_3 decimal(20, 5) NOT NULL);CREATE PRIMARY KEY ON SCHEMAA.TABLE1(TB1_1);CREATE CACHED TABLE SCHEMAA.TABLEA2 (	TB3_1 varchar(20) NOT NULL,	TB3_2 varchar(100) DEFAULT 'Test',	TB3_3 decimal(20, 5) NOT NULL);CREATE PRIMARY KEY ON SCHEMAA.TABLEA2(TB3_1);CREATE CACHED TABLE SCHEMAA.TABLE_2 (	TB2_1 varchar(20) NOT NULL,	TB2_2 varchar(100) DEFAULT 'Test',	TB2_3 decimal(20, 5) NOT NULL);CREATE PRIMARY KEY ON SCHEMAA.TABLE_2(TB2_1);CREATE CACHED TABLE SCHEMAB.TABLE1 (	TB2_1 varchar(20) NOT NULL,	TB2_2 varchar(100) DEFAULT 'A',	TB2_3 decimal(20, 5) NOT NULL);CREATE UNIQUE INDEX TABL11_IDX1 ON SCHEMAB.TABLE1 (TB2_2);CREATE INDEX FK1_INDEX_9 ON SCHEMAB.TABLE1 (TB2_1);CREATE INDEX TABL11_IDX2 ON SCHEMAB.TABLE1 (TB2_3);CREATE CACHED TABLE SCHEMAB.TABLE2 (	TB3_1 varchar(20) NOT NULL,	TB3_2 varchar(100) DEFAULT 'A',	TB3_3 decimal(20, 5) NOT NULL);CREATE PRIMARY KEY ON SCHEMAB.TABLE2(TB3_1);CREATE CACHED TABLE SCHEMAB.TABLE_5 (	TB5_1 varchar(20) NOT NULL,	TB5_2 varchar(100) DEFAULT 'Test',	TB5_3 decimal(20, 5) NOT NULL);CREATE PRIMARY KEY ON SCHEMAB.TABLE_5(TB5_1);CREATE VIEW SCHEMAB.VIEW1 AS SELECT TABLE1.TB1_1, TABLE1.TB1_2, TABLE1.TB1_3 FROM SCHEMAA.TABLE1 /* SCHEMAA.TABLE1_DATA */;ALTER TABLE SCHEMAA.TABLE1 ADD CONSTRAINT FK1 FOREIGN KEY (TB1_1) REFERENCES SCHEMAA.TABLE_2(TB2_1) ON DELETE RESTRICT ON UPDATE RESTRICT;ALTER TABLE SCHEMAB.TABLE1 ADD CONSTRAINT ERRELSYS_0 FOREIGN KEY (TB2_1) REFERENCES SCHEMAB.TABLE2(TB3_1) ON DELETE RESTRICT ON UPDATE RESTRICT;