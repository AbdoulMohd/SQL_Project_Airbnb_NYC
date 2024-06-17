/* 2- What is the average price per night within each borough. */


SELECT borough, ROUND(AVG(price), 2) AS avg_price
FROM airbnb_nyc
GROUP BY borough
ORDER BY avg_price DESC;


/*
| Borough        | Average Price per Night |
|----------------|--------------------------|
| Manhattan      | 227.85                   |
| Brooklyn       | 187.03                   |
| Queens         | 126.49                   |
| Staten Island  | 118.78                   |
| Bronx          | 118.41                   |
*/
