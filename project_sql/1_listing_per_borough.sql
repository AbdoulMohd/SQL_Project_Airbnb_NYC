/* 1 - Which borough has the highest number of listings, and which borough has the lowest number of listings? */


SELECT 
    borough, COUNT(id) AS num_listings 
FROM airbnb_nyc
ORDER BY num_listings
GROUP BY borough;


/*
| Borough        | Number of Listings |
|----------------|--------------------|
| Manhattan      | 8,038              |
| Brooklyn       | 7,719              |
| Queens         | 3,761              |
| Bronx          | 949                |
| Staten Island  | 291                |
*/ 

