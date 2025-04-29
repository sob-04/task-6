create schema	cars;
use cars;
-- read data--
select * from second_hand_cars;
-- total count: to get count of total records 
select count(*) from second_hand_cars;
-- manager wants to know about availability of cars sold in 2023--
select count(*) from second_hand_cars where year = 2023;
-- manager wants to know about availability of cars sold in 2020,2021,2022?--
select count(*) from second_hand_cars where year = 2020; #74
select count(*) from second_hand_cars where year = 2021; #7
select count(*) from second_hand_cars where year = 2022; #7
-- GROUP BY--
-- limit results for specific time period--
select count(*) from second_hand_cars where year in(2020,2021,2022) group by year;
-- client asks to print total of all cars by year. do not want to see full details--
select year, count(*) from second_hand_cars group by year;
-- client asks how many diesel cars will be there in 2020 to car dealer agent--
select count(*) from second_hand_cars where year = 2020 and fuel = "Diesel";
-- using sum() for checking revenue/selling_price--
select sum(selling_price) from second_hand_cars;