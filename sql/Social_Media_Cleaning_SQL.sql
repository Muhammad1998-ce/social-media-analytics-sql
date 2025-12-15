/* =====================================================
   01 - DATA PROFILING
   Objective:
   - Detect NULL values
   - Check age range
   - Identify hidden spaces in text columns
===================================================== */

-- 1. Detect records with NULL values
SELECT *
FROM social_media
WHERE user_id IS NULL
   OR country IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR likes IS NULL
   OR comments IS NULL
   OR shares IS NULL
   OR profession IS NULL
   OR hobby IS NULL
   OR _3_second_video_views IS NULL
   OR _1_minute_video_views IS NULL;

-- 2. Check age range validity
SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age
FROM social_media;

-- 3. Detect hidden spaces in categorical columns
SELECT country, gender, profession, hobby
FROM social_media
WHERE country <> TRIM(country)
   OR gender <> TRIM(gender)
   OR profession <> TRIM(profession)
   OR hobby <> TRIM(hobby);


/* =====================================================
   02 - DATA CLEANING & PREPARATION
   Objective:
   - Create cleaned table
   - Standardize text columns
   - Create Age_Group feature
===================================================== */

-- 1. Create cleaned table
CREATE TABLE cleaned_social_media (
    user_id VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    gender VARCHAR(50),
    age INT,
    age_group VARCHAR(20),
    likes INT,
    comments INT,
    shares INT,
    profession VARCHAR(50),
    hobby VARCHAR(50),
    _3_second_video_views INT,
    _1_minute_video_views INT
);

-- 2. Insert cleaned data
INSERT INTO cleaned_social_media
SELECT
    user_id,
    TRIM(country) AS country,
    TRIM(gender) AS gender,
    age,
    CASE
        WHEN age BETWEEN 13 AND 20 THEN '13-20'
        WHEN age BETWEEN 21 AND 30 THEN '21-30'
        WHEN age BETWEEN 31 AND 40 THEN '31-40'
        WHEN age BETWEEN 41 AND 50 THEN '41-50'
        ELSE '51+'
    END AS age_group,
    likes,
    comments,
    shares,
    TRIM(profession) AS profession,
    TRIM(hobby) AS hobby,
    _3_second_video_views,
    _1_minute_video_views
FROM social_media;
