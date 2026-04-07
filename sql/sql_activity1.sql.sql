select salesman_id, salesman_city
from salesman;

select * from salesman
where salesman_city='paris';

select salesman_id,commission from salesman 
where salesman_name='paul adam';

alter table salesman add(grade int);
update salesman set grade=100;

select * from salesman;


update salesman set grade = 200 where salesman_city='Rome';
update salesman set grade = 300 where salesman_name='james hoog';
update salesman set salesman_name = 'pierre' where salesman_name='mclyon';