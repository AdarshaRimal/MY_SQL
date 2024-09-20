-- Write a SQL query to select all columns from a table named "jersey" where the price is between $50 and $100

-- for this problem lets create new database called store
create database store;

use store; -- now store database is being used
-- first we have to create table with column product, let me create table with name jersey

create table jersey(
sku bigint primary key, -- sku means Unique product inventory identifier code.
club varchar(30),		-- club name can be empty i.e null
country varchar(30),	-- country name can be empty i.e null
price$ int not null
);

-- lets add some values in it 
INSERT INTO jersey (sku, club, country, price) VALUES
(1001, 'FC Barcelona', 'Spain', 120),
(1002, 'Manchester United', 'England', 110),
(1003, 'Juventus', 'Italy', 115),
(1004, 'Paris Saint-Germain', 'France', 130),
(1005, 'Bayern Munich', 'Germany', 125),
(1006, 'Real Madrid', 'Spain', 140),
(1007, 'Liverpool', 'England', 105),
(1008, 'AC Milan', 'Italy', 100),
(1009, 'Chelsea', 'England', 115),
(1010, 'Borussia Dortmund', 'Germany', 95);


-- jerseys having price in betwwen 50$-100$
select * from jersey where price between 50 and 100;