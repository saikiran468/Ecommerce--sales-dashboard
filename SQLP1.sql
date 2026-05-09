create database sqldb;
use sqldb;
drop table sql1;
select*from movies1;
select*from movies1;
select movies from movies1;
select movies,profit
from movies1
order by profit desc;
select movies,rating 
from movies1
order by rating desc;
select sum(collections) as total_revenue
from movies1;
select sum(budget) as total_budget
from movies1;
select avg(rating) as avg_rating
from movies1;
select* from movies1
where status='flop';
select movies,budget,collections
from movies1
order by collections desc;
select
sum(budget) as total_budget,
sum(collections) as total_revenue
from movies1;
select movies,collections-budget as profit_calc
from movies1;
select movies,profit,(collections-budget)as calc_prft
from movies1;
select movies,collections-budget as total_profit
from movies1
where collections-budget>500;
select movies,budget,collections
from movies1
where collections<budget;
select budget,collections
from movies1;
select movies,rating
from movies1
where rating>4;
select movies,budget
from movies1
order by budget desc
limit 1;
select sum(collections) 
from movies1;
select movies,(collections-budget) as profit
from movies1
order by profit desc
limit 3;
select avg(rating) as avg_rating
from movies1;
select movies,category 
from movies1
where category='action drama';
select movies,collections 
from movies1
order by collections desc
limit 2;
select movies,(collections-budget) as profit
from movies1
order by profit desc
limit 3;
select avg(collections-budget) as avg_profit
from movies1;
select
round(avg(collections-budget),2) as avg_profit
from movies1;
select movies,rating,(collections-budget) as profit
from movies1
where rating>4 and profit>450
order by rating desc
limit 2;
select movies,category,(collections-budget) as profit
from movies1
where category='action drama'
order by profit desc
limit 1;
select category,avg(collections-budget) as avg_profit
from movies1
where category in ('action drama','periodical drama')
group by category
order by avg_profit desc;
select category,avg(rating) as avg_rating
from movies1
group by category
order by avg_rating desc
limit 1;
select movies,(collections-budget) as profit
from movies1
where (collections-budget) > (select avg(collections-budget)
from movies1);
select category,rating as avg_rating
from movies1
where (rating) > (select avg(rating)
from movies1);
select category,avg(rating) as avg_rating
from movies1
group by category
having avg(rating)>(select avg (rating)
from movies1);
select movies,(collections-budget) as profit,rating
from movies1
where (collections-budget)>(select avg(collections-budget)
from movies1)
and rating>(select avg (rating)
from movies1);
select movies,collections
from movies1
order by collections desc
limit 3;
select movies,budget
from movies1
where budget > (select avg(budget) 
from movies1);
select sum(collections) as total_collections,category
from movies1
group by category;
SELECT movies,
       (collections - budget) AS profit
FROM movies1
WHERE (collections - budget) = (
    SELECT MAX(collections - budget)
    FROM movies1
    WHERE (collections - budget) < (
        SELECT MAX(collections - budget)
        FROM movies1
    )
);
SELECT category,
       AVG(collections - budget) AS avg_profit
FROM movies1
GROUP BY category
HAVING AVG(collections - budget) > (
    SELECT AVG(collections - budget)
    FROM movies1
);
select budget,collections
from movies1;
select rating as rating
from movies1
where rating>4;
select movies,collections-budget as profit
from movies1
where profit>500;
select movies,budget 
from movies1
order by budget desc
limit 1;
select movies,budget
from movies1
where budget=(select max(budget) from movies1);
select sum(collections)
from movies1;
select movies,profit
from movies1
order by profit desc
limit 3;
select avg(rating) as avg_rating
from movies1;
select (collections-budget) as profit
from movies1
where (collections-budget)>
	(select avg(collections-budget)
    from movies1);
select rating 
from movies1
where rating > (select avg(rating)
from movies1)
order by rating desc;
SELECT movies, rating
FROM movies1
WHERE rating > (
    SELECT AVG(rating)
    FROM movies1
    WHERE category=category
);
select movies,profit,rating
from movies1
where profit > (select avg(profit)
from movies1)
and rating>3;
use sqldb;
select m1.movies,m1.category,(collections-budget) as profit
from movies1.m1
where(m1.co1lections-budget) > (select avg (m2.collections-budget)
from movies1.m2
where m1.category=m2category);


    
