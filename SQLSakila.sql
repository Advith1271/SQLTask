select *from actor;
select * from film;
/*Q1*/
select first_name, last_name from actor;

/*Q2*/
select last_name from actor where first_name = 'john';

/*Q3*/
select first_name, last_name from actor where last_name = 'neeson';

/*Q4*/
select first_name,last_name from actor where (actor_id%10) = 0;

/*Q5*/
select description from film where film_id = 100;

/*Q6*/
select title from film where rating = 'R';

/*Q7*/
select title from film where rating != 'R';

/*Q8*/
select title from film order by length limit 10;

/*Q9*/
select title
from film
where length = (select max(length) from film);
/*Q10*/
select title from film where special_features like '%deleted scenes%';

/*Q11*/
select last_name,count(last_name) from actor
group by last_name having count(last_name) = 1
order by last_name desc;

/*Q12*/

select last_name,count(last_name) as frequency
from actor
group by last_name having frequency >1;


/*Q13*/
select * from film_actor;
/*Q14*/
create view actorfilm
as
select a.first_name,a.actor_id,f.film_id
from actor a
join film_actor f on a.actor_id = f.actor_id;

select first_name,count(first_name) from actorfilm group by first_name order by count(first_name) desc limit 1;

/*Q14*/
create view whendue
as
select f.film_id, f.title,i.inventory_id, r.return_date
from film f 
join inventory i 
ON f.film_id = i.film_id
join rental r 
ON i.inventory_id  = r.inventory_id;

select*from whendue where title = 'academy dinosaur'and return_date is not null;


/*Q15*/
select avg(length) from film;

/*Q16*/
select * from film_category;
select * from category;
select * from film;
select  * from rental;

/*17*/
select * from film where description like '%Robot%';
select * from film;
/*18*/
select title from film where release_year = 2010;
select * from film;
/*19*/
create view titlecategory
as
select f.title, fc.category_id
from film f
join film_category fc ON f.film_id = fc.film_id;

select * from titlecategory where category_id = '11';

/*20*/
select first_name,last_name from staff where staff_id = 2;

/*21*/
select count(actor_id) from film_actor where actor_id = 16;
/*22*/
select count(country) from country;

/*23*/
select * from language order by name desc;
/*24*/
select first_name,last_name from actor where last_name = '%-son' order by first_name;
/*25*/
select * from film_category;