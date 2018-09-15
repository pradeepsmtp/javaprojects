
CREATE TABLE APP.MYEMP
    (EMPID INT PRIMARY KEY,
    EMPNAME VARCHAR(12), Age int ,EMPSTATUS VARCHAR(1));   
    
        
INSERT INTO APP.MYEMP values (20,'OBAMA',17,'E')  

INSERT INTO APP.MYEMP values (21,'Michele',16,'E')  

INSERT INTO APP.MYEMP (   "EMPID",
        "EMPNAME",   "AGE",        "EMPSTATUS" )
        VALUES    (143,'Shastri',47, 'C') ;
select * from  APP.myemp where empname like  '%P%'
select * from  APP.myemp where empname like  '%O%' or empname like  '%M%'  ;

-- DBA

select * from SYS.SYSTABLES  where TABLETYPE='T'

select * from SYS.SYSCOLUMNS

-- Person  Table

 DROP TABLE APP.PERSON

CREATE TABLE APP.PERSON
    (ID INT not null  PRIMARY KEY  
        GENERATED ALWAYS AS IDENTITY
        (START WITH 110, INCREMENT BY 10),    
    NAME VARCHAR(12) NOT NULL ,   SEX CHAR(1), AGE int ); 
  
select * from APP.person   

delete from PERSON where  id >150 ;
    
INSERT INTO APP.person ( name, sex, age) values ('Sushama' ,'F',35);
INSERT INTO APP.person ( name, sex, age) values ('Brack Obama','M',45);
INSERT INTO APP.person ( name, sex, age) values ('Trump', 'M',99);
INSERT INTO APP.person ( name, sex, age) values ('Charles','M',34);
INSERT INTO APP.person ( name, sex, age) values ('Nancy','F',40);
INSERT INTO APP.person ( name, sex, age) values ('Dyana','F',30);
INSERT INTO APP.person ( name, sex, age) values ('Gulliver','M',25);
INSERT INTO APP.person ( name, sex, age)  values ('Hillary','F',34);

INSERT INTO APP.person ( name, sex, age)  values ('Shosamma','F',47);

select top  from APP.person  

select max(id) from  APP.person  where age not  in (select max(age) from  APP.person ) 

select * from PERSON p1 where 0 =
	(select  count(distinct( p2.age))  from  PERSON p2
	where p2.AGE > p1.age )
	

select    TOP age  from APP.person 