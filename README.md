Coursera: Getting and Cleaning Data Course Project 
===============

Please be kind, O Peer Reviewer, I finished this project in the wee hours before leaving on a camping trip with my 5 year old son. Otherwise I would have taken greater care with some of the steps. Still, I believe that I have accomplished what was required to earn full points on this project. Full details follow ...

This repository (repo) contains the following files in addition to this README.md file:
* run_analysis.R - an R script that downloads and analyzes the data for the project and produces a tidy data set.
* CodeBook.md - a code book/data dictionary describing the variables, the data, and the transformations I performed to clean up the data

### About run_analysis.R

The R script run_analysis.R downloads data and performs analysis for the course project. You should download the script to your working directory run it. Here are a few things to note about the script.
1. The script will automatically download the data from the web into your working directory and unzip the file. If you  have already downloaded and extracted the files to your working directory, you can prevent these steps by commenting out the relevant lines in the script.
2. Mean and standard deviation measurements were extracted based on variable names (anything with mean or std in the name was chosen).
3. Mad props to **Kaja Zupanc** on the course discussion forum for the tip on using the formula version of the aggregate function `aggregate(. ~ subject + activity, filtered_data, mean)`

