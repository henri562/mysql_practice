select s.STU_ID                                 as `Student ID`,
       s.FIRST_NAME                             as `First Name`,
       s.LAST_NAME                              as `Last Name`,
       s.CITY                                   as City,
       timestampdiff(year, s.DOB, '2020-01-01') as age
       -- datediff('2020-01-01', s.DOB) / 365.25 as Age
from q4_student s
         join q4_course c on s.STU_ID = c.STU_ID and c.COURSE_NAME in ('PHYSICS', 'MATHS')
group by `Student ID`;