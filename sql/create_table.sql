CREATE TABLE electronics (
    item_id INTEGER,
    user_id INTEGER,
    rating DECIMAL,
    timestamp DATE,
    model_attr VARCHAR,
    category VARCHAR,
    brand VARCHAR,
    year INTEGER,
    user_attr VARCHAR,
    split INTEGER
);

COPY electronics
FROM '/Users/ruitao/electronics_sales_analysis/data/raw/electronics.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM electronics;