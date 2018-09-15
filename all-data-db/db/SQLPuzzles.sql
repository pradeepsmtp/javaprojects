select * from SYS.SYSTABLES  where TABLETYPE='T'

select * from SYS.SYSCOLUMNS

select * from  APP.myemp where empname like  '%P%'
select * from  APP.myemp where empname like  '%O%' or empname like  '%M%'  ;

select top  from APP.person  

select max(id) from  APP.person  where age not  in (select max(age) from  APP.person ) 

-- nth max or min


select * from PERSON p1 where 1 =
	(select  count(distinct( p2.age))  from  PERSON p2
	where p2.AGE > p1.age )
	

select   * from emp order by depid

select * from dep order by depid

select a.* , b.depname from emp a, dep b  where b.depid=a.depid


select e.*, d.depname from emp e left outer join dep d  on  e.depid=d.depid ;



select * from emp e right outer join dep d  on  e.depid=d.depid  order by e.depid ;

select * from emp e  inner join dep d  on  e.depid=d.depid    order by e.depid ;

select * from emp e left outer join dep d  on  e.depid=d.depid ;


select * from emp e  right outer join dep d  on  e.depid=d.depid


holdlock a, dep b  where b.depid=a.depid

select depid, count(*) from emp group by depid 

update emp set depid

-- delete  from emp where empid=321

-- Duplicate
 select count (distinct  age) from emp
 
select   age, count(age) from emp  group by age order by age

select  depid,count(depid) as cn from emp group by depid  having count(depid) > 0

select * from  emp where depid in ( 
select  depid as cn from emp 
group by depid  having count(depid) = 3 )

select age from  emp where depid > 20 group by age having age >30

 select * from emp  ;
 update  emp set depid = 20 where empid=133
 
 select * from  person where ( name ) in (select name  from person group by name, age ,sex having count(*) >1  ) order by name
 
 update person set age = 20  where id = 490
 
 ---Correlated find  and can delete
  select * from person p where p.id not in ( 
  select min(id)  from  person p2 where p2.name= p.name and p2.sex = p.sex) 
  
  ) order by name
  
  select *  from  person where id not in (select max(id)  from  person group by name, sex)  
  
  