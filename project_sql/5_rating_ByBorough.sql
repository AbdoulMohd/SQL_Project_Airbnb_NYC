/* 5- Which borough has the highest average rating */


SELECT borough, ROUND(
    AVG(
        CASE
            WHEN REGEXP_REPLACE(rating, '[^0-9\.]', '', 'g') ~ '^[0-9]+(\.[0-9]+)?$' THEN CAST(REGEXP_REPLACE(rating, '[^0-9\.]', '', 'g') AS DECIMAL)
            ELSE 0
        END
    ), 2
) AS average_rating
FROM airbnb_nyc
GROUP BY borough;



/*
| Borough        | Average Rating |
|----------------|----------------|
| Staten Island  | 4.25           |
| Queens         | 4.05           |
| Bronx          | 4.03           |
| Brooklyn       | 4.02           |
| Manhattan      | 3.64           |
*/