# IMDb Movies Dataset Analysis in SQL

## 📌 Project Overview
This project focuses on analyzing an **IMDb Movies Dataset** using **MySQL** queries.  
The dataset includes information about movies, such as **title, director, cast, genre, rating, votes, duration, year of release, meta scores, and parental guidance ratings (PG ratings).**

Through SQL queries, we aim to explore movie trends, ratings, votes, popular directors, and genre-based analytics.

---



## ⚙️ Database Setup
### **1. Create Database and Use It**
```sql
CREATE DATABASE imdb;
USE imdb;

2. Movies Table
The dataset is stored in a table named movies.
Key columns:

movie_name: Name of the movie

year: Year of release

director: Director of the movie

cast: Main actors in the movie

genre: Genre (e.g., Action, Biography, Drama)

rating: IMDb rating

votes: Number of votes received

meta_score: MetaCritic score

pg_rating: Parental guidance rating (e.g., PG, PG-13, R)

duration: Duration of the movie

📊 Key Insights
Find top-rated movies of all time.

Identify popular directors with most movies.

Explore genres and their distribution.

Analyze movie ratings trends over years.

Filter family-friendly and R-rated movies.

🚀 How to Use
Create a database:

sql
Copy
Edit
CREATE DATABASE imdb;
USE imdb;
Create a table movies and load IMDb data.

Run the queries above to analyze the dataset.

🛠️ Tools Used
Database: MySQL

SQL Features: Aggregation, Group By, Filtering, LIKE, ORDER BY, LIMIT.

Dataset: IMDb movie data (custom CSV).


