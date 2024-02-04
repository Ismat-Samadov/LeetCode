/* Write your PL/SQL query statement below */
select email  from (
  select email,count(1) say from person group by email having count(1)>1
) 