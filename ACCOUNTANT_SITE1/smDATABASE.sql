create database smdb

clear screen;

DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE SALARY CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_SALARY CASCADE CONSTRAINTS;
DROP TABLE TRANSECTION CASCADE CONSTRAINTS;
DROP TABLE LEAVE CASCADE CONSTRAINTS;
DROP TABLE FUND CASCADE CONSTRAINTS;


CREATE TABLE EMPLOYEE (
	eid int, 
	ename varchar2(20),
    gender varchar2(5),	
	email varchar2(20),
	join_date varchar2(20) ,
        PRIMARY KEY(eid)); 

insert into employee  values (1, 'S', 'M','s@gamil.com', '1/1/2022'); 
insert into employee  values (2, 'F','F', 'F@gamil.com', '1/1/2022');  
insert into employee  values (3, 'M','F', 'm@gamil.com', '1/1/2022'); 
insert into employee  values (4, 'R','M', 't@gamil.com', '1/1/2022');  
insert into employee  values (5, 'p','M', 'p@gamil.com', '1/1/2022'); 

CREATE TABLE SALARY(
	sid int, 
	basic int, 
	allowance int,
	PRIMARY KEY(sid));

insert into salary values(1, 18000,5000); 
insert into salary values(2, 20000,5000); 
insert into salary values(3, 22000,6000); 
insert into salary values(4, 35000,6500); 
insert into salary values(5, 50000,7000); 
 
CREATE TABLE EMPLOYEE_SALARY(
	eid int, 
	sid int,
	FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid),
	FOREIGN KEY(sid) REFERENCES SALARY(sid));
	 
insert into employee_salary values(1,1); 
insert into employee_salary values(2, 3); 
insert into employee_salary values(3,5); 
insert into employee_salary values(4,2);
insert into employee_salary values(5,1); 
	
CREATE TABLE LEAVE(
    lid int,
	eid int, 
	l_month varchar2(15), 
	l_day int,
	PRIMARY KEY(lid));
	
insert into leave values(1,1, 'Jan/22', 3); 
insert into leave values(2,3, 'Jan/22', 4); 
insert into leave values(3,2, 'Jan/22', 5); 
insert into leave values(4,6, 'Jan/22', 3); 
insert into leave values(5,4, 'Jan/22', 1); 
	
CREATE TABLE TRANSECTION (
	tid int, 
	eid int,
	ammount int,
	t_date date,  
	s_month varchar2(15),
	PRIMARY KEY(tid),
	FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid));
	
CREATE TABLE FUND (
       fid int,
	   fund_amnt int,
	   PRIMARY KEY(fid));
	   
insert into fund values(1,1000000);	   
	   
CREATE TABLE FUND_Audit (
	   amnt_new int,
	   amnt_old int,
	   Update_date varchar2(30));
	
CREATE TABLE EMPLOYEE_SALARY_Audit(
	new_sid int,
	old_sid int,
	Changing_date varchar2(30));


commit;
 
