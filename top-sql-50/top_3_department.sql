 SELECT 
  Department, 
  Employee, 
  Salary
  FROM 
  (

  SELECT 
  D.Name AS Department, 
  E.Name AS Employee, 
  E.Salary AS Salary,
  DENSE_RANK() OVER (
  PARTITION BY d.NAME
  ORDER BY d.name, E.SALARY DESC
  ) AS RANK

  FROM Employee E 
  INNER JOIN Department D 
  ON E.DepartmentId = D.Id
  group by d.name, e.name, e.salary
  ) 
  WHERE RANK <= 3