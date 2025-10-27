-- Checking for duplicates
WITH duplicates AS (
SELECT *, 
ROW_NUMBER() OVER (PARTITION BY item_id, user_id, rating, timestamp, model_attr, category, brand, year, user_attr) AS rn
FROM electronics
)
SELECT * FROM duplicates
WHERE rn > 1
ORDER BY item_id;
