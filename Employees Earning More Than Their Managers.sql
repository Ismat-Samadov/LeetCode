/* Write your PL/SQL query statement below */
select mng.name  manager, mng.salary manager_salary ,
       emp.name  employee,emp.salary employee_salary
 from employee emp 
 inner join employee mng 
 on emp.managerId=mng.id
 where emp.salary>mng.salary;