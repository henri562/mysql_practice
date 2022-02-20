select e.emp_name as Chef
from q1_cooking c
         join q1_recipe r on c.f_id = r.f_id
         join q1_employee e on c.emp_id = e.emp_id
group by e.emp_name
order by count(r.ing_id) desc
limit 3;