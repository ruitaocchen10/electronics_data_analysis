-- Checking for duplicates
WITH duplicates AS (
SELECT *, 
ROW_NUMBER() OVER (PARTITION BY item_id, user_id, rating, timestamp, model_attr, category, brand, year, user_attr) AS rn
FROM electronics
)
SELECT * FROM duplicates
WHERE rn > 1
ORDER BY item_id;i

-- Exploring categories
SELECT DISTINCT category FROM electronics;

-- Exploring brands
SELECT DISTINCT brand FROM electronics;

-- Fixing IRULU brand inconsistencies
UPDATE electronics
SET brand = 'IRULU'
WHERE brand LIKE '%iRULU%';

-- Finding out what user attributes means
SELECT DISTINCT user_attr FROM electronics;

-- Checking NULL brand value entries in category
SELECT * FROM electronics
WHERE category = 'Portable Audio & Video';

-- Downloading clean data
SELECT * FROM electronics;