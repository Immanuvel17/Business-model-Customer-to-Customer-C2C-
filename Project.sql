create database ecommerce;
use ecommerce; 
select * from user_data_2;
select * from user_data_2 limit 100;
select count(distinct language) Total_languages, count(distinct country) Total_countries from user_data_2 ;
select count(socialNbFollowers) max_followers, gender from user_data_2 group by gender;

select count(hasprofilepicture) hpp from user_data_2 where hasprofilepicture = 'True';
select count(hasAnyApp) haa from user_data_2 where hasAnyApp = 'True';
select count(hasandroidapp) hap from user_data_2 where hasandroidapp = 'True';
select count(hasiosapp) hia from user_data_2 where hasiosapp = 'True';

select count(productsbought) buyer, country from user_data_2 where productsbought != 0 group by country order by buyer desc;

select count(productssold) seller, country from user_data_2 where productssold != 0 group by country order by seller ;

select country,productspassrate from user_data_2 where productspassrate > 0 order by productspassrate desc limit 10;

select count(type) users,language from user_data_2 where hasAnyApp = 'True' Group by language;

SELECT 
    'Wishlist' AS choice, COUNT(type) AS total_users
FROM user_data_2 
WHERE gender = 'f' and productsWished <> 0
UNION 
SELECT 
    'Social Like' AS choice, COUNT(type) AS total_users
FROM user_data_2 
WHERE gender = 'f'and socialProductsLiked <> 0;

select 
'seller' as choice, count(type) as total_users
from user_data_2
where gender ='M' and productssold <> 0
union
select 'buyer' as choice, count(type) as total_users
from user_data_2
where gender ='M' and productsbought <> 0;

select country, max(productsbought) buyers from user_data_2 group by country order by buyers desc;

select country from user_data_2 where productssold = 0 group by country Limit 10;

select type,daysSinceLastLogin  from user_data_2 where type ='user' order by daysSinceLastLogin Limit 110;

select count(gender) users from user_data_2 where gender ='F' and dayssincelastlogin >=100;

select country, count(gender) female_users from user_data_2 where gender ='F' group by country;

select country, count(gender) male_users from user_data_2 where gender ='M' group by country;

select avg(productssold) sell, avg(productsbought) purchase, country from  user_data_2 where gender ='M' group by country;

