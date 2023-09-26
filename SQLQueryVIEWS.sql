use master
select * from Employee

--VIEWS--

create view Emp_From_Mumbai as
select * from Employee where city='Mumbai'

-- adding new view

create view Emp_From_Dev as
select name,email,age,salary from Employee where did=(select did from dept where 
dname='Development')

-- modify the view

alter view Emp_From_Dev as
select name,email,age,salary,did from Employee where did=(select did from dept where 
dname='Development')

-- to run the view
--fetch the view / display the view
select * from Emp_From_Mumbai

select * from Emp_From_Dev

-- drop the view
drop view Emp_Desc_salary





