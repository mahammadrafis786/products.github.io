create database employee;

show databases;

use employee ;

show tables ;

CREATE TABLE Employee (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50),
    JOB VARCHAR(50),
    HIREDATE DATE,
    MGR INT,
    SAL DECIMAL(10,2),
    COMM DECIMAL(10,2),
    DEPTNO INT,
    FOREIGN KEY (DEPTNO) REFERENCES Department(DEPTNO)
);
CREATE TABLE Department (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50),
    LOCATION VARCHAR(50)
);
show tables ;

desc employee;

insert into employee values (7369,'SMITH','CLERK','1980-12-17', 7902 ,800,null,20); 

insert into  employee values (7566,'JONES','MANAGER','1981-04-02',7839,2975,null,20);

insert into employee values(7521,'WARD','SALESMAN','1981-02-22',7689,1250,500,30);

insert into employee values(7566,'JONES','MANAGER','1981-04-02',7839,2975,null,20);

insert into employee values(7654,'MARTIN','SALESMAN','1981-05-01',7698,1250,1400,30);

insert into employee values(7698,'BLAKE','MANAGER','1981-05-01',7839,2850,null,30) ;

insert into employee values(7782,'CLARK','MANAGER','1981-06-09',7839,2450,null,10);

insert into employee values(7788,'SCOTT','ANALYST','1987-04-19',7566,3000,null,20);

insert into employee values(7839,'KING','PRESIDENT','1981-11-17',null,5000,null,10);

delete from employee where ENAME='SCOTT';

insert into employee values(7844,'TURNER','SALESMAN','1981-09-08',7698,1500,0,30);

insert into employee values(7876,'ADAMS','CLERK','1987-05-23',7788,1100,null,20);

insert into employee values(7900,'JAMES','CLERK','1981-12-03',7698,950,null,30);

insert into employee values(7902,'FORD','ANALYST','1981-12-03',7566,3000,null,20);

insert into employee values(7934,'MILLER','CLERK','1982-01-23',7782,1300,null,10) ;

use employee;

insert into employee values(7345,'RAFI','MANAGER','1985-12-04',8889,7800,null,20) ;

commit ;

use employee;

show tables;

select * from employee;
select * from department;

rollback;

update employee set EMPNO=9876 where ENAME='RAFI';
rollback;
SET SQL_SAFE_UPDATES=0;

delete from employee where ENAME='SMITH';

commit;

rollback;
desc table employee ;

CREATE TABLE Department (DEPTNO int  , DNAME VARCHAR (50) , LOC VARCHAR(50) ,
foreign key (DEPTNO) REFERENCES employee (DEPTNO)); 

INSERT INTO Department values (10,'ACCOUNTING','NEW YORK');
INSERT INTO Department values (20,'RESEARCH','DALLAS') ;
INSERT INTO Department values (30,'SALES','CHICAGO');
INSERT INTO Department values (40,'OPERATIONS','BOSTON') ;
SELECT * FROM Department ;
alter table employee modify column DEPTNO int, drop primary key ;
drop table Department ;
drop table employee ;
SELECT ENAME,SAL FROM employee where SAL <(
select SAL from employee where empno =7839);
delete DEPTNO from department where DEPTNO=40;

select sal from employee where empno=(select MGR from employee where ENAME='MILLER');
