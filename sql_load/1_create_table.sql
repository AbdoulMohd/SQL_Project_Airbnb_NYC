CREATE TABLE airbnb_nyc (
    id INT,
    name TEXT,
    host_id INT,
    host_name TEXT,
    neighbourhood_group TEXT,
    neighbourhood TEXT,
    latitude NUMERIC,
    longitude NUMERIC,
    room_type TEXT,
    price NUMERIC,
    minimum_nights INT,
    number_of_reviews INT,
    last_review DATE,
    reviews_per_month NUMERIC,
    calculated_host_listings_count INT,
    availability_365 INT,
    number_of_reviews_ltm INT,
    license TEXT,
    rating NUMERIC,
    bedroom VARCHAR(20),
    beds INT,
    baths VARCHAR(20)
);

ALTER TABLE airbnb_nyc ALTER COLUMN host_id TYPE bigint;
ALTER TABLE airbnb_nyc ALTER COLUMN rating TYPE VARCHAR(20);
ALTER TABLE airbnb_nyc
RENAME COLUMN neighbourhood_group TO borough; 
