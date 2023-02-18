

--What are the distinct neighborhoods?


select distinct neighborhoods
from nomnom;


--What are the distinct cuisine types?

select distinct cuisine
from nomnom;





--Suppose we would like some Chinese takeout.
--What are our options?



Select *
from nomnom
where cuisine = 'Chinese';




--Return all the restaurants with reviews of 4 and above.

elect review
from nomnom
where review  >= 4 ;




--Suppose Abbi and Ilana want to have a fancy dinner date.
--Return all the restaurants that are Italian and $$$.

Select *
from nomnom
where cuisine = 'Italian' and price = '$$$' ;




--Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it.
Can you find it for him using a query?

Select *
from nomnom
where name like '%meatball%' ;


--Let’s order delivery to the house!
--Find all the close by spots in Midtown, Downtown or Chinatown.
--(OR can be used more than once)

Select *
from nomnom
where neighborhood = 'Midtown' or
neighborhood = 'Downtown' or 
neighborhood = 'Chinatown';







--Find all the health grade pending restaurants (empty values).

Select *
from nomnom
where health is null;




--create a Top 10 Restaurants Ranking based on reviews.

Select *
from nomnom
order by review desc
limit 10;



--Use a CASE statement to change the rating system to:
	--review > 4.5 is Extraordinary
	--review > 4 is Excellent
	--review > 3 is Good
	--review > 2 is Fair
	--Everything else is Poor
--Don’t forget to rename the new column!

Select name,
case 
when review > 4.5 then 'Extraordinary'
when review > 4 then 'Excellent'
when review > 3 then 'good'
when review > 2 then 'fair'
else 'poor'
end as "review"
from nomnom;