create database spotify;
use spotify;

# Create a table for the spotify chart data
Create table spotifycharts(
id int,
dates date,
ranks int,
title varchar(255),
artist varchar(255),
streams int,
primary key(id)
);

SHOW VARIABLES LIKE "secure_file_priv";

# Import the dataset
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/spotifycharts.csv' 
INTO TABLE spotifycharts
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select *
from spotifycharts
limit 5;

# Select the summation of streaming numbers of BTS's songs group by dates
select dates, sum(streams)
from spotifycharts
where title regexp 'bts' or artist regexp 'bts'
group by dates;

# Create a table for the stock data and import the dataset
Create table stock(
dates date,
hybe int,
kospi decimal(7,2),
primary key(dates)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/data_HYBE.csv' 
INTO TABLE stock
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from stock
limit 5;

# Create a table for the search volume (Naver) data and import the dataset
Create table datalab(
dates date,
search_artist decimal(20, 5),
search_company decimal(20, 5),
primary key(dates)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/datalab.csv' 
INTO TABLE datalab
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from datalab;

# Create a table for the search volume (Google) data and import the dataset
Create table googletrends(
dates date,
search_artist int,
primary key(dates)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/googletrends.csv' 
INTO TABLE googletrends
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from googletrends;


# Make all the datasets on the daily basis
# Stock : lack of data on weekends
# Googletrends : weekly data
# Datalab (Naver) : Ok
# Spotify : Ok

# If there's no value for a date, fill in with the previous date
# Join all tables based on the same date
select d.dates, if(s.hybe is null, @prev1, @prev1:=s.hybe) as stock_company, 
	if(s.kospi is null, @prev2, @prev2:=s.kospi) as stock_kospi, 
    d.search_company, d.search_artist, 
    if(if(g.search_artist is null, @prev3, @prev3:=g.search_artist) is null, first_value(g.search_artist) over(), @prev3) as google_artist,
    sp.streams
from datalab as d
left join 
	(select dates, sum(streams) as streams
	from spotifycharts
	where title regexp 'bts' or artist regexp 'bts'
	group by dates) as sp
on d.dates = sp.dates
left join googletrends as g
on d.dates = g.dates
left join stock as s
on d.dates = s.dates;
