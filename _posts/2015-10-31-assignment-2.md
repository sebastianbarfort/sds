---
layout: post
title:  "Assignment 2: Web Scraping & Data Analysis"
categories: posts
---

In this assignment you will work with data from [www.ipaidabribe.com](http://www.ipaidabribe.com/). This is a crowdsourced attempt to measure corruption in India. The idea is simple: Every time you pay a bribe, you upload the amount, details of the transaction, and location. This data thus provides an alternative to official government statistics of corruption. 

According to their website

> I Paid a Bribe is a site that focuses on crowdsourced reports of corruption and bribery from India and all over the world.  
The site lays emphasis on the various kinds of Retail Corruption. This is kind of corruption that confronts ordinary citizens in their daily lives when they're not able to avail of services they are legitimately entitled to from the government – getting a driver's license, a birth certificate, registering a purchase of property.

The most recent reports are located [here](http://www.ipaidabribe.com/reports/paid).

In this assignment, I want you to **scrape the latest 1000 reports** from the website. The data has to include 

- title
- amount
- name of department
- transaction detail
- number of views 
- city 

In addition, I want you to add a date variable to the data frame. 

Afterwards, I want you to do a data analysis on the data. What do you think is interesting about this data? Tell a story in approx. 2 pages (excluding code) about some interesting thing you have discovered by looking at the data. 

For example, you might consider whether there is a difference in corruption levels at different times doing the day, or whether (if your data permits) corruption peaks at particular days doing the week or in particular cities. Another thing you might consider is whether there is a relationship between the amount paid and the number of views of a given post. 

The assignment has to be handed in as an [rmarkdown](http://rmarkdown.rstudio.com/) file that runs on its own. That is, it has to run without loading any external files. If you need external files please upload them to github and load them directly into your script. The `rmarkdown` file should be uploaded to github as an issue as with assignment 1. 





  

