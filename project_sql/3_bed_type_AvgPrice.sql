/* 3- What is the highest and lowest avg price per night for each room type?*/

SELECT 
    room_type, 
        ROUND(AVG(PRICE), 2) AS avg_price
FROM 
    airbnb_nyc
GROUP BY room_type
ORDER BY avg_price DESC

/*
| Room Type        | Average Price per Night |
|------------------|-------------------------|
| Hotel room       | 415.05                  |
| Entire home/apt  | 223.16                  |
| Shared room      | 156.29                  |
| Private room     | 139.52                  | 
*/