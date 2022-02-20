select child.name                                             as Child,
       max(case
               when parent.gender = 'M' then parent.name end) as Father,
       max(case
               when parent.gender = 'F' then parent.name end) as Mother
from q3_relations r
         join q3_people child on r.c_id = child.id
         join q3_people parent on r.p_id = parent.id
group by Child
order by Child;