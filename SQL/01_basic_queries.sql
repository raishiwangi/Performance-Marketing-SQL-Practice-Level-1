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

---NUll Function
---null represents missing or unknown data. It means the value is not present in the database 
--- we cannot use = or ! to compare with NULL instead use:
---Is Null to check if value is missing
---Is NOT NULL to check if value is existing

---GET ALL RECORDS where audience_type is missing
Select * from `performancedatashiwangi.main.pm` where audience_type is null;

---list rows where reative_type is not missing
Select * from `performancedatashiwangi.main.pm` where creative_type is not null;


---AND---------------------------------------------------------------------
---- It allows you to apply multiple condition in the where claAUSE A ROQ MUST MEET ALL CONDITIONS TO BE RETURNED

--- Get data where device is mobile and age is 25-34
Select * from `performancedatashiwangi.main.pm` where device= 'Mobile' and age= '24-35';

---show campaigns on facebook ads with impressions more than 500
Select * from `performancedatashiwangi.main.pm` where campaign_type ='Facebook Ads' and impressions > 500;


---- OR--------------------------------------------------------------------
----It returns data when atleast one contion is true, used when we want flexibility in filtering

----show rows where device is mobile or connected TV
Select * from `performancedatashiwangi.main.pm` where device= 'Mobile' Or device='Connect TV';


---NOT-------------------------------
---Use to negate a condition. It return rows where condition is not true
------ use with where (WHERE NOT)
--- Show where device is not mobile
Select * from `performancedatashiwangi.main.pm` where not device = 'Mobile';




-----Practice questions------

-----Retrieve non desktop campaigns with impressions less than 1000

Select * from `performancedatashiwangi.main.pm` where device <> 'Desktop' and impressions<1000;
--- [<>] we can use thiws symbol at place of not

---Retrieve facebook ads campaigns where clicks are between 50 and 200
Select * from `performancedatashiwangi.main.pm` where campaign_type= 'Facebook ads' and clicks > 50 and clicks < 200;

---Show audience type is missing and spends >100
Select * from `performancedatashiwangi.main.pm` where audience_type is NULL and spends >100;

---- Retrieve campaigns where age is 35-44 or 45-54 and spends <100
Select * from `performancedatashiwangi.main.pm` where (age = '35-44' or age = '45-54') and spends <100;

----Exclude camopaigns with device tablet and age 18-24
Select * from `performancedatashiwangi.main.pm` where not (device ='tablet' and age = '18-24');

---Top 5 mobile campaigns by link clicks
Select * from `performancedatashiwangi.main.pm` where device = 'Mobile'order by link_clicks DESC Limit 5;

---List Campaigns that are not in search and not in the age group 25-34
Select * from `performancedatashiwangi.main.pm` where not (campaign_type = 'Search' and age = '25-34');


---Get campaigns for users aged 65 or more with clicks above 10
Select * from `performancedatashiwangi.main.pm` where age = '65 or more' and clicks > 10;

---Retrieve all Facebook Campaigns where subchannel is brand or generic
Select * from `performancedatashiwangi.main.pm` where campaign_type = 'facebook ads' and subchannel ='Brand or Generic';

---Explanantion: Focus on content targeting brand/genric terms on facebook


---Find campaigns with NULL creative type and not null audience type
Select * from `performancedatashiwangi.main.pm` where creative_type is null and audience_type is not null;

---Show non google ads campaigns targeting age 35-44 or 45-54
Select * from `performancedatashiwangi.main.pm` WHERE NOT campaign_platform = 'Google Ads' and (age = '35-44'OR age = '45-54');


---Find top 10 campaigns by impressions for connected TV
Select * from `performancedatashiwangi.main.pm` where device = 'Connected TV' order by impressions desc limit 10;

---  Retrieve Records with age not in '18-24' or '25-34'
Select * from `performancedatashiwangi.main.pm` where not (age ='18-24' or age = '25-34');


---Retrieve top 5 records with highest clicks for google ads
Select * from `performancedatashiwangi.main.pm` where campaign_platform = 'Google Ads'order by clicks desc limit 5;

----Show campaigns where device is not mobile and clicks are less than 20
Select * from `performancedatashiwangi.main.pm` where not device = 'Mobile' and clicks < 20;


---Retrieve campaigns with spends> 100 and device either or  tablet
Select * from `performancedatashiwangi.main.pm` where spends > 100 and (device = 'Desktop' or device = 'Tablet');

---List all campaigns where link_click is null and impressions is grwater than 500
Select * from `performancedatashiwangi.main.pm` where link_clicks is null and impressions > 500;

---Retrieve campaigns not targeted to undertmined age
Select * from `performancedatashiwangi.main.pm` where not  age = 'undetermind';

---List campaign with either low clicks (<5) or low spends (<10)
Select * from `performancedatashiwangi.main.pm` where clicks < 5 or spends < 10;






