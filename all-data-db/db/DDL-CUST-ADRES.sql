
set schema APP ;

--select * from SYS.SYSTABLES  where TABLETYPE='T'

--select * from SYS.SYSCOLUMNS

-- DROP  Customer

CREATE TABLE Customer (
  id int PRIMARY KEY NOT NULL,
  name varchar(20) DEFAULT NULL 
);

CREATE TABLE Address (
  id int PRIMARY KEY NOT NULL,
  address varchar(20) DEFAULT NULL, 
  country varchar(20) DEFAULT NULL 
);

select * from SYS.SYSTABLES  where TABLETYPE='T' ;
 