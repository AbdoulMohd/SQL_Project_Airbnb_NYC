# Introduction
This case study aims to analyze the latest data on Airbnb listings in New York City as of January 5th, 2024. By leveraging SQL for data analysis and Tableau for visualization, this study not only offers a comprehensive snapshot of the current state of Airbnb in New York City 

The dataset:  [Kaggle](https://www.kaggle.com/datasets/vrindakallu/new-york-dataset)   
🔍 SQL queries? Check them out here: [project_sql folder](project_sql)   


## The questions I wanted to answer through my SQL queries were:
1 - Which borough has the highest number of listings, and which borough has the lowest number of listings?

 2- What is the average price per night within each borough?

 3- What is the highest and lowest avg price per night for each room type?

 4- What is the most popular bedroom type accross each borough.

 5- Which borough has the highest average rating, and within each borough?


# Tools I Used

- **SQL**: For analysis and queries to gain insight about the dataset
- **PostgreSQL**: The database management system for handling complex queries
- **Visual Studio Code**: Used for executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.



# Analysis
1) ### Which borough has the highest number of listings, and which borough has the lowest number of listings?
```sql
SELECT 
    borough, COUNT(id) AS num_listings 
FROM 
    airbnb_nyc
ORDER BY num_listings
GROUP BY borough;
```

| Borough        | Number of Listings |                     
|----------------|--------------------|
| Manhattan      | 8,038              |
| Brooklyn       | 7,719              |
| Queens         | 3,761              |
| Bronx          | 949                |
| Staten Island  | 291                |


Based on the analysis of the Airbnb listings dataset, it is evident that Manhattan and Brooklyn are the most popular boroughs for Airbnb accommodations in New York City. Manhattan leads with the highest number of listings, totaling 8,038, closely followed by Brooklyn with 7,719 listings. On the other hand, Staten Island has the fewest listings, with only 291, reflecting its lower demand among visitors compared to other boroughs. 




2) ### What is the average price per night within each borough.
```sql
SELECT 
    borough, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
GROUP BY borough
ORDER BY avg_price DESC;
```
| Borough        | Average Price per Night |
|----------------|--------------------------|
| Manhattan      | 227.85                   |
| Brooklyn       | 187.03                   |
| Queens         | 126.49                   |
| Staten Island  | 118.78                   |
| Bronx          | 118.41                   |



The analysis of average nightly prices for Airbnb listings in New York City reveals distinct price variations across boroughs. Manhattan, with an average price of $227.85 per night, is the most expensive borough. Brooklyn follows with an average nightly rate of $187.03, indicative of its trendy neighborhoods and growing popularity. Queens offers a more budget-friendly option at $126.49 per night, appealing to those seeking diverse cultural experiences without the high costs of Manhattan or Brooklyn. Staten Island and the Bronx are the most affordable, with average prices of $118.78 and $118.41 per night, respectively




3) ### What is the highest and lowest avg price per night for each room type?
```sql
SELECT 
    room_type, 
    ROUND(AVG(PRICE), 2) AS avg_price
FROM 
    airbnb_nyc
GROUP BY room_type
ORDER BY avg_price DESC
```
| Room Type        | Average Price per Night |
|------------------|-------------------------|
| Hotel room       | 415.05                  |
| Entire home/apt  | 223.16                  |
| Shared room      | 156.29                  |
| Private room     | 139.52                  |


Analyzing the average nightly prices for each room type in the New York City Airbnb market reveals notable variations based on accommodation type. Hotel rooms command the highest average price at $415.05 per night, reflecting the premium associated with full-service accommodations typically found in hotels. Entire homes and apartments follow closely at $223.16, indicating the popularity of private accommodations offering guests exclusivity and comfort akin to their own homes. Shared rooms, at an average of $156.29 per night, provide a more economical option for travelers seeking affordability and a communal living experience. Private rooms fall in between at $139.52 per night, offering a balance between privacy and cost-effectiveness. 



4) ### What is the most popular bedroom type accross each borough.
```sql
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE borough = 'Manhattan' --Filter by borough
GROUP BY room_type
ORDER BY num_rooms DESC; 
```
### MANHATHAN
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 5288            | 253.75                  |
| Private room     | 2572            | 163.45                  |
| Hotel room       | 101             | 442.33                  |
| Shared room      | 77              | 319.56                  |




** **
### BRONX 
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Private room     | 544             | 97.30                   |
| Entire home/apt  | 390             | 149.04                  |
| Shared room      | 15              | 87.33                   |




** **

### BROOKYLN
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 4129            | 210.74                  |
| Private room     | 3464            | 161.66                  |
| Shared room      | 122             | 105.96                  |
| Hotel room       | 4               | 162.75                  |



** **
## QUEENS
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Private room     | 2093            | 87.38                   |
| Entire home/apt  | 1586            | 179.93                  |
| Shared room      | 75              | 84.05                   |
| Hotel room       | 7               | 165.71                  |

** **
### STATEN ISLAND

| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 156             | 139.85                  |
| Private room     | 131             | 92.39                   |
| Shared room      | 4               | 161.25                  |


The analysis of room type popularity across the different boroughs of New York City reveals varying preferences and pricing dynamics. In Manhattan, "Entire home/apt" is the most popular room type with 5,288 listings and an average price of $253.75 per night, highlighting the high demand for exclusive, private accommodations. The Bronx shows a preference for "Private rooms," with 544 listings at an average price of $97.30, indicating a demand for budget-friendly, semi-private accommodations. Brooklyn also favors "Entire home/apt" with 4,129 listings and an average price of $210.74, similar to Manhattan but at a slightly lower price point. Queens predominantly offers "Private rooms" with 2,093 listings at an average price of $87.38, emphasizing affordability. Staten Island's most popular room type is "Entire home/apt" with 156 listings, priced at an average of $139.85, reflecting a preference for more private accommodations in a quieter, residential borough. 


5) ### Which borough has the highest average rating, and within each borough, which neighborhood has the highest and lowest average ratings?

| Borough        | Average Rating |
|----------------|----------------|
| Staten Island  | 4.25           |
| Queens         | 4.05           |
| Bronx          | 4.03           |
| Brooklyn       | 4.02           |
| Manhattan      | 3.64           |


Staten Island emerges as the borough with the highest average rating, standing at 4.25. This high rating could reflect a more personalized and satisfactory experience provided by the hosts, possibly due to fewer listings and a more community-focused approach. Queens follows closely with an average rating of 4.05, indicating a generally positive experience for guests. The Bronx has an average rating of 4.03, suggesting a good level of satisfaction among guests. Brooklyn's average rating is slightly lower at 4.02, which, while still positive, could reflect the variability in guest experiences across its diverse neighborhoods. Manhattan, despite being the most popular and expensive borough, has the lowest average rating of 3.64, possibly due to the higher expectations and volume of tourists leading to more critical reviews. These insights highlight the varying levels of guest satisfaction across New York City's boroughs, with Staten Island standing out for its exceptional ratings.