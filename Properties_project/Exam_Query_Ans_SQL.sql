use property;
create table EmployeeInfo (EmpID int, EmpFnam varchar(50),EmpLnam varchar(50),Department varchar(50),
Project varchar(50),Address varchar(50),DOB int,Gender varchar(5));
select * from EmployeeInfo;insert into EmployeeInfo (EmpID,EmpFnam,EmpLnam,Department,Project,Address,DOB,Gender)
values(101,'sanjay','mehra','HR','P1','Hyderabad (HYD)',01/12/1976,'M');
select * from EmployeeInfo;
insert into EmployeeInfo (EmpID,EmpFnam,EmpLnam,Department,Project,Address,DOB,Gender)
values(102,'Anannya','Mishra','Admin','P2','Delhi(DEL)',02/05/1968,'F');
select * from EmployeeInfo;
insert into EmployeeInfo (EmpID,EmpFnam,EmpLnam,Department,Project,Address,DOB,Gender)
values(103,'Rohan','Diwan','Account','P3','Mumbai(BOM)',01/01/1980,'M');
select * from EmployeeInfo;
insert into EmployeeInfo (EmpID,EmpFnam,EmpLnam,Department,Project,Address,DOB,Gender)
values(104,'Sonia','Kulkarni','HR','P1','Hyderabad (HYD)',02/05/1992,'F');
select * from EmployeeInfo;
insert into EmployeeInfo (EmpID,EmpFnam,EmpLnam,Department,Project,Address,DOB,Gender)
values(105,'Ankit','Kapoor','Admin','P2','Delhi(DEL)',03/07/1994,'M');
select * from EmployeeInfo;


create table EmployeePosition (EmpId int,EmpPosition varchar(50),DateOfJoining int,Salary int);
insert into EmployeePosition (EmpId,EmpPosition,DateOfJoining,Salary)
values(101,'Manager',01/05/2022,500000);
select * from EmployeePosition;

insert into EmployeePosition (EmpId,EmpPosition,DateOfJoining,Salary)
values(102,'Executive',02/05/2022,75000);

insert into EmployeePosition (EmpId,EmpPosition,DateOfJoining,Salary)
values(103,'Manager',01/05/2022,90000);

insert into EmployeePosition (EmpId,EmpPosition,DateOfJoining,Salary)
values(102,'Lead',02/05/2022,85000);

insert into EmployeePosition (EmpId,EmpPosition,DateOfJoining,Salary)
values(101,'Executive',01/05/2022,300000);


-- Write a query to retrieve Departments who have less than 2 employees working in it.

select *, Department from  employeeinfo;
select department,count(department) count_emp from employeeinfo
group by 1;

-- Write a query to create a new table that consists of data and structure copied from the other table.
create table copyEmployeeInfo (select * from employeeInfo);

select * from copyEmployeeInfo;

-- Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
select *,concat(EmpFnam,' ',EmpLnam) as fullname from EmployeeInfo;

-- Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
select * from employeeinfo where EmpFnam !='sanjay' and EmpFnam !='Sonia';

-- Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.

select department, count(department)  from employeeinfo
group by 1 order by department asc;

-- Write a query to calculate the even and odd records from a table.
select * from employeeinfo where mod(EmpID,2)=0;

-- calculate odd records
select * from EmployeeInfo where mod(EmpID,2)!=0;

-- Write a SQL query to retrieve employee details from EmployeeInfo table
--  who have a date of joining in the EmployeePosition table.

select employeeinfo.*,employeeposition.* from EmployeeInfo
join employeeposition
on employeeinfo.EmpID=employeeposition.EmpID ;

-- Write a query to retrieve the list of employees working in the same department.
select *, row_number() over(partition by department) as same_depart from employeeInfo;

