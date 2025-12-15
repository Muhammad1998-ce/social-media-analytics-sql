-- Total Engagement 

SELECT SUM(likes + comments + shares) AS Engagment 
FROM cleaned_social_media;

--AVG Engagment Per User

SELECT AVG(likes + comments + shares) AS AVG_Engament_Per_User
FROM cleaned_social_media;

-- Engagment Distribution 

SELECT SUM(likes) * 100  / SUM(likes+ comments + shares) AS "likes %",
SUM(comments) * 100  / SUM(likes+ comments + shares) AS "comments_%",
SUM(shares) * 100  / SUM(likes+ comments + shares) AS "shares_%"
FROM cleaned_social_media;

-- Engagment By User
SELECT user_id ,
SUM(likes + comments + shares ) AS Engagment_Per_User
FROM cleaned_social_media
GROUP BY user_id
ORDER BY SUM(likes + comments + shares ) DESC;


-- Audiance KPI'S

-- Engagment By Age Group 

SELECT age_group ,
SUM(likes + comments + shares) AS Engagment
FROM cleaned_social_media
GROUP BY age_group
ORDER BY SUM(likes + comments + shares) DESC;

-- Engagment By Country 

SELECT country ,
SUM(likes + comments + shares) AS Engagment
FROM cleaned_social_media
GROUP BY country
ORDER BY SUM(likes + comments + shares) DESC;

-- Engagment By Gender 

SELECT gender ,
SUM(likes + comments + shares) AS Engagment
FROM cleaned_social_media
GROUP BY gender
ORDER BY SUM(likes + comments + shares) DESC;


-- Engagment By Profession 
SELECT profession ,
SUM(likes + comments + shares) AS Engagment
FROM cleaned_social_media
GROUP BY profession
ORDER BY SUM(likes + comments + shares) DESC;

-- Engagment By Hobby 
SELECT hobby ,
SUM(likes + comments + shares) AS Engagment
FROM cleaned_social_media
GROUP BY hobby
ORDER BY SUM(likes + comments + shares) DESC;


-- Amplification Rate 

SELECT ROUND(CAST(SUM(shares) AS FLOAT) * 100 / SUM(shares + comments + likes),2) AS Amplification_Rate
FROM cleaned_social_media

-- Converation Rate 

SELECT ROUND(CAST(SUM(comments) AS FLOAT) * 100 / SUM(shares + comments + likes),2) AS Amplification_Rate
FROM cleaned_social_media

-----------------------------------------

-- Video Content KPI's

-- Total Viedo Views 

SELECT 
SUM(_3_second_video_views + _1_minute_video_views) AS Total_Video_Views
FROM cleaned_social_media

-- Video Retention Rate

SELECT ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) AS "Video Retention Rate"
FROM cleaned_social_media

-- Retention By Age_Group 
SELECT age_group,
ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) AS "Video Retention Rate"
FROM cleaned_social_media
GROUP BY age_group 
ORDER BY ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) DESC;

-- Retention By country 

SELECT country,
ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) AS "Video Retention Rate"
FROM cleaned_social_media
GROUP BY country 
ORDER BY ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) DESC;

-- Retention By Gender

SELECT gender,
ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) AS "Video Retention Rate"
FROM cleaned_social_media
GROUP BY gender 
ORDER BY ROUND(CAST(SUM(_1_minute_video_views) AS FLOAT) *100 /SUM(_3_second_video_views),2) DESC;



-- Top Segementation 

-- TOP 5 Countris By Engagment 
SELECT TOP 5 
country,
SUM(likes + comments + shares) AS Engagment_Per_country 
FROM cleaned_social_media
GROUP BY country
ORDER BY  SUM(likes + comments + shares) DESC;

-- TOP 5 Professions By Engagment
SELECT TOP 5 
profession,
SUM(likes + comments + shares) AS Engagment_Per_profession
FROM cleaned_social_media
GROUP BY profession
ORDER BY  SUM(likes + comments + shares) DESC;

-- TOP 5 Hobbies By Engagment 

SELECT TOP 5 
hobby,
SUM(likes + comments + shares) AS Engagment_Per_hobby
FROM cleaned_social_media
GROUP BY hobby
ORDER BY  SUM(likes + comments + shares) DESC;
