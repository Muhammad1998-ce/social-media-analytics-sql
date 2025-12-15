# Social Media Analytics Project (SQL)

## Project Overview
This project focuses on analyzing social media engagement data using **SQL**.
The goal is to clean raw data, engineer meaningful features, calculate key KPIs,
and prepare the dataset for dashboarding and business insights.

The project simulates a real-world analytics workflow, starting from raw data
and ending with actionable insights and visual dashboards.

---

## Dataset
- File: `data/social_media_analysis.csv`
- Description: User-level social media engagement data
- Key columns include:
  - User demographics (age, gender, country, profession, hobby)
  - Engagement metrics (likes, comments, shares)
  - Video metrics (3-second views, 1-minute views)

---

## Project Structure

social-media-analytics-sql/
│
├── sql/
│ ├── Social_Media_Cleaning_SQL.sql
│ ├── Social_Media_Queries.sql
│
├── data/
│ └── social_media_analysis.csv
│
├── dashboard/
│ └── screenshots/
│ └── dashboard.png
│
├── README.md

---

## Data Cleaning & Preparation

The data cleaning process includes:
- Detecting and handling NULL values
- Removing hidden spaces from categorical columns
- Validating age ranges
- Feature engineering:
  - Creating an `age_group` column to support demographic analysis

All cleaning logic is implemented in:

sql/Social_Media_Cleaning_SQL.sql

---

## Key Metrics & Analysis
Using SQL, the following metrics were analyzed:
- Total engagement (likes + comments + shares)
- Engagement distribution by age group and gender
- Video engagement funnel:
  - 3-second views
  - 1-minute views
- User behavior patterns across demographics

Analytical queries can be found in:

sql/Social_Media_Queries.sql

---

## Dashboard Preview
The cleaned dataset was used to build a visual dashboard
to highlight key engagement and video performance metrics.

![Dashboard Preview](dashboard/screenshots/dashboard.png)

---

## Tools Used
- SQL (Data Cleaning, Feature Engineering, Analysis)
- Power BI (Dashboard & Visualization)
- GitHub (Version Control & Portfolio Presentation)

---

## Key Takeaways
- Structured data cleaning is critical before analysis
- Demographic segmentation reveals clear engagement patterns
- Video retention metrics help evaluate content quality
- SQL alone can deliver strong analytical insights when used correctly

---

## Author
Mohamed  
Aspiring Data Analyst / Machine Learning Engineer




