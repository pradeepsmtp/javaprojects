select * from SYS.SYSTABLES  where TABLETYPE='T'

select * from SYS.SYSCOLUMNS



    INSERT INTO APP.DEP values (10,'HR')  ;
    INSERT INTO APP.DEP values (20,'IT')  ;
    INSERT INTO APP.DEP values (30,'TRANS')  ;
    INSERT INTO APP.DEP values (40,'FINANCE');
    INSERT INTO APP.DEP values (50,'LEGAL');
        
INSERT INTO APP.EMP values (205,'OBAMA', 17,'E', 50);  
INSERT INTO APP.EMP values (214,'Michele', 16,'E',40) ;
INSERT INTO APP.EMP values (321,'Sushama', 35 ,'F', 10 ); 
INSERT INTO APP.EMP values (762,'Trump',  99,'F',50);
INSERT INTO APP.EMP values (821,'Charles', 34,'F',50);
INSERT INTO APP.EMP values (443,'Nancy', 40,'F',40);
INSERT INTO APP.EMP values (314,'Dyana', 30,'F',20);
INSERT INTO APP.EMP values (219,'Gulliver', 25,'F',20);


INSERT INTO APP.EMP (empid, EMPNAME , age)  values (321,'Gina', 35 ); 

INSERT INTO APP.EMP values (219,'Nathan', 46,'F',20);

select * from APP.EMP  

select * from APP.person   
    
INSERT INTO APP.person ( name, sex, age) values ('Sushama' ,'F',35);
INSERT INTO APP.person ( name, sex, age) values ('Brack Obama','M',45);
INSERT INTO APP.person ( name, sex, age) values ('Trump', 'M',99);
INSERT INTO APP.person ( name, sex, age) values ('Charles','M',34);
INSERT INTO APP.person ( name, sex, age) values ('Nancy','F',40);
INSERT INTO APP.person ( name, sex, age) values ('Dyana','F',30);
INSERT INTO APP.person ( name, sex, age) values ('Gulliver','M',25);
INSERT INTO APP.person ( name, sex, age)  values ('Hillary','F',34);

select * from APP.person   

