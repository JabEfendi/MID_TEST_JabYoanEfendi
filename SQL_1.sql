-- SQL1
create table input_table(
	id serial primary key unique,
	num int
);

insert into input_table("num") values(1),(1),(1),(2),(1),(2),(2),(1);

SELECT DISTINCT num
FROM (
    SELECT 
        num, 
        LEAD(num, 1) OVER (ORDER BY id) next_num,
        LAG(num, 1) OVER (ORDER BY id) prev_num
    FROM input_table
) subquery
WHERE num = next_num AND num = prev_num
ORDER BY num;