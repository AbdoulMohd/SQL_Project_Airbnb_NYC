/* 4- What is the most popular bedroom type accross each borough. */


/* MANHATHAN */
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE borough = 'Manhattan'
GROUP BY room_type
ORDER BY num_rooms DESC; 

/*
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 5288            | 253.75                  |
| Private room     | 2572            | 163.45                  |
| Hotel room       | 101             | 442.33                  |
| Shared room      | 77              | 319.56                  |
*/


/* BRONX */
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE borough = 'Bronx'
GROUP BY room_type
ORDER BY num_rooms DESC; 

/*
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Private room     | 544             | 97.30                   |
| Entire home/apt  | 390             | 149.04                  |
| Shared room      | 15              | 87.33                   |
*/


/* Brookyln */
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE 
    borough = 'Brooklyn'
GROUP BY room_type
ORDER BY num_rooms DESC; 

/*
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 4129            | 210.74                  |
| Private room     | 3464            | 161.66                  |
| Shared room      | 122             | 105.96                  |
| Hotel room       | 4               | 162.75                  |
*/


/* Queens */
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE 
    borough = 'Queens'
GROUP BY room_type
ORDER BY num_rooms DESC; 

/*
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Private room     | 2093            | 87.38                   |
| Entire home/apt  | 1586            | 179.93                  |
| Shared room      | 75              | 84.05                   |
| Hotel room       | 7               | 165.71                  |
*/


/* Staten Island */
SELECT
    room_type, 
    COUNT(id) AS num_rooms, 
    ROUND(AVG(price), 2) AS avg_price
FROM 
    airbnb_nyc
WHERE 
    borough = 'Staten Island'
GROUP BY room_type
ORDER BY num_rooms DESC; 

/*
| Room Type        | Number of Rooms | Average Price per Night |
|------------------|-----------------|-------------------------|
| Entire home/apt  | 156             | 139.85                  |
| Private room     | 131             | 92.39                   |
| Shared room      | 4               | 161.25                  |
*/