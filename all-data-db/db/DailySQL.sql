shutdown

set schema APP ;

select  * from  emp ;

select  e.*, d.depname from emp e inner join  dep d  on d.depid = e.depid

select  e.*, d.depname from emp e join  dep d  on d.depid = e.depid

select  count(*)  from emp e join  dep d  on d.depid = e.depid  group by d.depname having d.depname in ('IT')


select  e.*, d.depname from emp e left outer join  dep d  on d.depid = e.depid

select * from customer;

select * from address;

delete from emp where empname='Pankaj' and empid > 133

update emp set age=28 where empname='Pankaj'

select * from emp

select * from mytest

suse sample ;

shutdown=true ;

set schema APP

list schemas



