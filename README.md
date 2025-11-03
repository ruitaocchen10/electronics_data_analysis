# Electronics Sales Analysis

A data analysis project focused on cleaning and analyzing Amazon electronics sales data using PostgreSQL.

## Dataset Overview

The dataset contains electronics product information with user ratings and temporal data. The raw data is stored in `electronics.csv` and processed into `electronics_cleaned.csv` after data quality improvements.

## Analysis Components

### 1. Data Quality Assessment
- **Duplicate Detection**: Implements window functions with `ROW_NUMBER()` partitioned by all key columns to identify and flag duplicate records
- **NULL Value Analysis**: Examines missing brand information, particularly in the Portable Audio & Video category
- **Data Validation**: Verifies integrity of categorical fields and user attributes

### 2. Data Standardization
- **Brand Name Normalization**: Corrects inconsistent brand naming conventions (e.g., standardizing "iRULU" variations to "IRULU")
- **Category Exploration**: Catalogs unique product categories present in the dataset
- **Brand Inventory**: Documents all distinct brands for consistency verification

### 3. Data Transformation
- **Schema Definition**: Creates structured table with appropriate data types for each attribute
- **Data Import Pipeline**: Loads raw CSV data into PostgreSQL database
- **Clean Data Export**: Generates standardized dataset for downstream analysis

## Technical Stack

**Database Management**
- PostgreSQL (recommended version 12+)

**Development Environment**
- VS Code with SQLTools extension
- PostgreSQL command line tools

**SQL Techniques Employed**
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`, `PARTITION BY`)
- Data Manipulation Language (UPDATE statements)
- Data Definition Language (CREATE TABLE)
- Batch data import (COPY command)

## Key Discoveries

Through the data cleaning and exploration process, several important findings emerged:

**Data Quality Issues**
- Duplicate records identified through comprehensive multi-column partitioning
- Brand name inconsistencies requiring standardization across multiple variations
- NULL brand values detected in specific product categories

**Dataset Characteristics**
- Multiple distinct product categories spanning the electronics domain
- Diverse brand representation with varying levels of data quality
- Temporal data enabling time-series analysis potential

**Standardization Needs**
- Brand naming conventions required normalization for accurate grouping
- Categorical data needed validation for consistency

**Key Findings**
1. 2015 had the best sales but the industry has been declining rapidly since then.
2. Ratings have remained consistently positive over time with no signs of rating inflation.
3. Bose, Logitech, and Mpow are currently the leading brands, but all brands are experiencing declining sales.
4. Headphones, Computers & Accessories, and Cameras & Photos are the top product categories.
5. Sales peak in January and December, likely due to holiday shopping.

## Author

**Author**: Ruitao Chen

**Contact**: ruitaocchen@gmail.com
