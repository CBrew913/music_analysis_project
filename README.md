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
The topic we have chosen is to determine if there is a link between profanity in music and the change in popularity over the years.  The group has selected this topic in order to determine if there is a linear relationship between the use of profanity over time in music. The sources of data are music lyrics on a music lyric database and Spotify in order to use the meta data to determine top downloaded songs
      
  ### Objective
The main question to answer is if increased profanity in music lyrics increases the popularity of the song?  This information will help future song writers determine if using profanity will help the song sell or hinder it’s sales especially for up and coming artists.  The popularity index that we will use is based off of spotify. Each track has its own SPI calculated influencing the artist’s overall index. Yet, while the Popularity Index is majorly determined by recent stream count, other factors like save rate, the number of playlists, skip rate, and share rate can indirectly bump up or push down a song’s popularity index (1).  We will also break down the data by genre between dance pop, pop and other based on the top songs for the years 2010-2019.  The other avenue to discover is if over time the amount of profanity in a song peeks and then recedes over the years or if there is a steady increase. 

### Communication
The main communication source for this project will be through GitHub and Slack.  Our group has added extra meetings on Sunday's where we use Slack Huddle to combine our efforts to achieve the best projects.  The project manager will send out goals for each meeting in order to keep the group on track with the assignment. 

## Presentation
Our full presentation can be found on [google slides](https://docs.google.com/presentation/d/1FcxS6b_bGPB0cDON7tFWfnrfn7OkDUYdnvs2HvQcbnk/edit?usp=sharing).


## Data Source
We used a "[top10s.csv](https://github.com/CBrew913/music_analysis_project/blob/main/top10s.csv)" dataset sourced from Kaggle. We chose this dataset because it is relative to the information we are interested in. It covers several years of interest (2010- 2019), and has a strong set of song characteristics concerning title, artist, and genre. You can access the full dataset here - https://www.kaggle.com/datasets/leonardopena/top-spotify-songs-from-20102019-by-year

![image](https://user-images.githubusercontent.com/103297084/201815514-796ce9f3-c7db-45d4-962f-be2da517f3dc.png)


## Data Exploration
### Exploration
The data exploration phase of the project was to determine the true content of the lyrics.  We discovered that there was a header at the beginning of every lyric with the artist and the title of the song.  We knew that would skew our word count data.  We also discovered that at the end of every lyric was a number with embed at the end and would have to remove that.  There was also a random add to buy tickets in the data set, so we knew that would need to be removed.  Overall the data was in the form that we needed it to be with being a string. 

### Analysis
During the analysis phase the data was cleaned of all unnecessary characters including the \n, headers, footers, random adds, punctuation and all the null values within the data set.  Once the data was cleaned, we started analyzing the data.  This is where things are getting a little tricky.  We were able to determine the value counts for all the words within the lyrics and place them into their own column.  The harder piece of code is to find all the curse words and place them into their own column.  I was able to get the code to work with finding one instance of the word; however was unable to complete for counting the same word for more than one instance.  Overall, this process is taking longer than expected due to the complexity of natural language processing and counting through the rows.  

## Database
### ERD

![image](https://user-images.githubusercontent.com/103297084/202476728-3f0f86c9-c0af-44b5-b45c-89259a81a6a0.png)

### Machine Learning Model

The machine learning model that will be utilized is a Linear Regression model. This will take in data from the sources mentioned above (Daniel's branch) and will be taking the input variables of percentage of curse words in each song and how popular that song is. This will determine if there is a linear relationship between percentage of profanity and how popular the song is for that timeframe. If it is a positive linear relationship then the number of curse words does increase popularity and if there a negative linear relationship then that opposite is true. 

![image](https://github.com/CBrew913/music_analysis_project/blob/Teresa_branch/FlowChart.PNG)




#### References
1. https://www.loudlab.org/blog/spotify-popularity-leverage-algorithm/#:~:text=What%20is%20Spotify%27s%20Popularity%20Index,on%20algorithmic%20playlists%20and%20recommendations.
