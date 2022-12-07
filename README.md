# Music Analysis Project

This is the final project for KU Data Analytics Bootcamp


   ## Roles
   | Name  | Role | Responsibilities|
   | --- | --- | --- |
   | [Julie McDaniel](https://github.com/JuMcDaniel)  | Project Manager | Manage the product communication, presentation and visualization|
   | [Caleb Brewer](https://github.com/CBrew913)  | Dashboard Lead | Manage the GitHub account and perform ETL on databases|
   | [Bennett Lawrence](https://github.com/bhlawrence)  | Database Lead | Responsible for pulling database information from API|
   | [Teresa Hartman](https://github.com/TeresaHartman)  | Machine Learning Lead | Manage the machine learning model|
   | [Danny Johnson](https://github.com/DannyJohnson-Hi)  | Technology Lead | Manage the technology used and performing SQL queries|
   
**Even though members have selected roles, everyone is working together to achieve the end goal.


   ## Project Overview
The topic we have chosen is to determine if there is a link between profanity in music and the change in popularity over the years.  The group has selected this topic in order to determine if there is a linear relationship between the use of profanity over time in music. The sources of data are music lyrics on a music lyric database and Spotify in order to use the meta data to determine top downloaded songs. 

  ### Objective
The main question to answer is if increased profanity in music lyrics increases the popularity of the song?  This information will help future song writers determine if using profanity will help the song sell or hinder it’s sales especially for up and coming artists.  The popularity index that we will use is based off of spotify. Each track has its own SPI calculated influencing the artist’s overall index. Yet, while the Popularity Index is majorly determined by recent stream count, other factors like save rate, the number of playlists, skip rate, and share rate can indirectly bump up or push down a song’s popularity index (1).  We will also break down the data by genre between dance pop, pop and other based on the top songs for the years 2010-2019.  The other avenue to discover is if over time the amount of profanity in a song peeks and then recedes over the years or if there is a steady increase. 


## Presentation 
Our full presentation can be found on [google slides](https://docs.google.com/presentation/d/1FcxS6b_bGPB0cDON7tFWfnrfn7OkDUYdnvs2HvQcbnk/edit?usp=sharing).

## Data Source
For our song list we used a "[top10s.csv](https://github.com/CBrew913/music_analysis_project/blob/main/top10s.csv)" dataset sourced from Kaggle. We chose this dataset because it is relative to the information we are interested in. It covers several years of interest (2010 - 2019), and has a strong set of song characteristics concerning title, artist, genre, and Spotify's popularity metric. You can access the full dataset here - https://www.kaggle.com/datasets/leonardopena/top-spotify-songs-from-20102019-by-year

For our lyrics, we used [LyricsGenius](https://lyricsgenius.readthedocs.io/en/master/), a Python API wrapper for the [Genius API](https://docs.genius.com/#/getting-started-h1) that makes it easy to pull song lyrics from the genius [website](https://genius.com/ "website"). The raw dataset ([lyric_data.csv](https://github.com/CBrew913/music_analysis_project/blob/main/data/lyric_data.csv)) was pulled in the [lyricsgenius.ipynb](https://github.com/CBrew913/music_analysis_project/blob/main/lyricsgenius.ipynb) file.

![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/Programs.jpg)

## Description of Analysis

### Exploration
The data exploration phase of the project was to determine the true content of the lyrics.  We discovered that there was a header at the beginning of every lyric with the artist and the title of the song.  We knew that would skew our word count data.  We also discovered that at the end of every lyric was a number with embed at the end and would have to remove that.  There was also a random add to buy tickets in the data set, so we knew that would need to be removed.  Overall the data was in the form that we needed it to be with being a string. 

#### Header removal
![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/header_removal.jpg)

#### Nall removal
![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/removing_nan.jpg)

### Analysis
During the analysis phase the data was cleaned of all unnecessary characters including the \n, headers, footers, random adds, punctuation and all the null values within the data set.  Once the data was cleaned, we started analyzing the data.  This is where things are getting a little tricky.  We were able to determine the value counts for all the words within the lyrics and place them into their own column.  The harder piece of code is to find all the curse words and place them into their own column.  I was able to get the code to work with finding one instance of the word; however was unable to complete for counting the same word for more than one instance.  Overall, this process is taking longer than expected due to the complexity of natural language processing and counting through the rows.  

#### Count total words
![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/total_words.jpg)

#### Count Curse words
![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/curse_words.jpg)

#### Final Columns
![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/final_df.jpg)

## Database
### ERD

![image](https://user-images.githubusercontent.com/103297084/202476728-3f0f86c9-c0af-44b5-b45c-89259a81a6a0.png)

### Table SQL:

![image](https://github.com/CBrew913/music_analysis_project/blob/daniels_branch/createsqla.png)

![image](https://github.com/CBrew913/music_analysis_project/blob/daniels_branch/createsqlb.png)





### Connection string
For our connection string we have used Amazon Web Servers for our Database and connecting through pgAdmin.  

## Machine Learning Model

The machine learning model that will be utilized is a Linear Regression model. This will take in data from the sources mentioned above (Daniel's branch) and will be taking the input variables of percentage of curse words in each song and how popular that song is. This will determine if there is a linear relationship between percentage of profanity and how popular the song is for that timeframe. If it is a positive linear relationship then the number of curse words does increase popularity and if there a negative linear relationship then that opposite is true. 

![image](https://github.com/CBrew913/music_analysis_project/blob/Teresa_branch/FlowChart.PNG)

We chose the Machine Learning Model of Linear Regression to compare the two characteristics of Time and Percent of Profanity in each song to determine if the percent of profanity in songs is increasing over time. A benefit of this is that there is a visual that is easy to interpret of the relationship between the two characteristics, and is shown below. A limit to this is that is only allows us to connect two of the characteristics of the many variables that we have considered, including the popularity rating and genre if we wanted to do farther analysis. We have started to do farther machine learning analysis to determine if any questions can be answered, including other charactistics about our data. 

![image](https://github.com/CBrew913/music_analysis_project/blob/Teresa_branch/MachineLearning/LinReg_TimePerc_Graph.PNG)

The data was split into the training and testing sets using sklearn.model_selection where X is the time in years, and y is the percetage of bad words in each song. 

![image](https://github.com/CBrew913/music_analysis_project/blob/Teresa_branch/MachineLearning/Train_Test.PNG)

## Dashboard

The tools that we have decided to use for our dashboard is Tableau.  We feel that Tableau is very interactive with a lot of features that would be beneficial for our final project.

The interactive elements of our dashboard will be gliding over the points on the linear regression model and it will state the artist, song title, popularity and profanity percentage.  

![image](https://github.com/CBrew913/music_analysis_project/blob/Julie_branch/images/dashboard.jpg)

#### References
1. https://www.loudlab.org/blog/spotify-popularity-leverage-algorithm/#:~:text=What%20is%20Spotify%27s%20Popularity%20Index,on%20algorithmic%20playlists%20and%20recommendations.
