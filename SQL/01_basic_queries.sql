SELECT * FROM `performancedatashiwangi.main.pm` LIMIT 1000;
---- Select keyword is telling that the database yo slect the data
----* ( It means all)
--- From again keyword giving direction to the table
---- `performancedatashiwangi.main.pm` --- project iD.datasetid,tableid
--- Every query is supposed to be ended by a semicolon)
---This above we have added comments using 3 dash and SQL will ignore this and do not run this

---Selecting one column
Select phase from `performancedatashiwangi.main.pm`;

--- Selecting multiple column
Select product, phase, campaign_platform from `performancedatashiwangi.main.pm`;

---where clause
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Google Ads';
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Facebook Ads';
Select * from `performancedatashiwangi.main.pm` where spends =50;

--- where cluase using text+ numerical filtering 
Select * from `performancedatashiwangi.main.pm` where campaign_type = 'search' and clicks >1;

--- Order by
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Facebook Ads' order by spends desc;
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Google Ads' order by spends asc;
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Facebook Ads' order by spends desc;


---short by impressions
Select product, impressions from `performancedatashiwangi.main.pm` ORDER BY impressions ASC;

-----Multiple column sorting
Select date, age, spends from `performancedatashiwangi.main.pm` ORDER BY date ASC,age ASC, spends DESC;

---List all campaignsfor mobile devices and age group 25-34
Select * from `performancedatashiwangi.main.pm` where device= 'Mobile' and age= '18-24';

--- Show product device and spends for records with clicks >50
Select product, device,spends from `performancedatashiwangi.main.pm` where clicks >50;

---List top 10 reords with highest spends
Select * from `performancedatashiwangi.main.pm` order by spends DESC Limit 10;
--- explanation- sort all rows by highest spend and limit the data to only 10 rows

---List all facebook campaign whose impressions is greaTER THAN 100
Select * from `performancedatashiwangi.main.pm` WHERE campaign_type= 'Facebook ads' and impressions >100;

---Get desktop device records sorted by spend low to high
Select device, spends from `performancedatashiwangi.main.pm` where device = 'desktop' order by spends asc;
---Or 
Select * from `performancedatashiwangi.main.pm` where device= 'desktop' order by spends asc;

---List top 5 most clicked campaigns for brand subchannel
Select campaign_platform,subchannel, clicks from `performancedatashiwangi.main.pm` where subchannel= 'brand' order by clicks desc limit 5;








