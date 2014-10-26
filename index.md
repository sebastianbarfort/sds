---
title       : Data Science 
subtitle    : Course Description
author      : Sebastian Barfort
job         : PhD student, economics.
framework   : minimal        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github: {user: sebastianbarfort, repo: dsss, branch: "gh-pages"}
assets:
  css: 
    - "http://fonts.googleapis.com/css?family=Open+Sans"
    - "http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700"
---

# Data Science for Social Scientists

This repo contains an outline for a data sciency course for social
scientists at the University of Copenhagen. The main objective is to
learn students how to gather, analyse, and effectively present social
data.

The course is build on open source software, and an important objective
is to introduce students to the fundamentals of widely used computer
languages such as `Python` and `R`, as well as `git` and shell
scripts. We will introduce students to the theories underlying state of
the art implementations such as `ggplot2`, `dplyr`, and `tidyr` for `R`
(or `pandas` and `matplotlib` for Pythonistas), as well as widely used
tools of the trade such as version control and the command line.

This course is focused on the following main topics

1.  [**Introduction to programming**](#introduction-to-programming)
2.  [**Data visualisation and
    communication**](#data-visualisation-and-communication)
3.  [**Automatic data gathering via Web
    scraping**](#automatic-data-gathering%20via-Web-scraping)
4.  [**Version control with git**](#version-control-with-git)
5.  [**Introduction to reproducible
    research**](#introduction-to-reproducible-research)
6.  [**Computational data analysis and machine
    learning**](#computational-data-analysis-and-machine-learning)

This course assumes no knowledge of any particular software or computer
program, but while we'll try to demystify the technological side of
things so students feel comfortable getting started and thinking
programmatically, this *will be a technical course*, and students
should expect to spend a significant amount of time learning these
tools. The course will be primarily taught in `R`, but students adept in
`Python` are more than welcome to use this throughout.

The curriculum borrows extensively from courses such as [Introduction to
Collaborative Social Science Data
Analysis](https://github.com/HertieDataScience2014/SyllabusAndLectures)
at the Hertie School of Governance, [QMSS Data
Visualization](http://malecki.github.io/qmssviz/), [Data
Journalism](http://kpq.github.io/nyu-data-journalism-2014/) at NYU, and
[Data Science](http://columbiadatascience.com/2012/08/29/syllabus/)
taught at Columbia University 2012.

## Introduction to programming

> This is the job. - Lester Freamon

**Topics**
- practicalities: R, RStudio, Python, and Ipython Notebooks
- object oriented programming
- data types and functions
- natural
language processing and regular expressions
- iterations, loops,
libraries, logical statements, vectorized computations
- a grammar of
data manipulation: working with data, reshaping, merging
- working from
the command line

**Browse before class**
- Lazer, David, et al. 2009. ''[Computational Social Science](http://www.sciencemag.org/content/323/5915/721.summary)''. *Science*. 323(5915): 721-723. ([Open access version](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2745217/)).
- Edelman, Benjamin. 2012. [''Using Internet Data for Economic Research''](http://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.26.2.189), *Journal of Economic Perspectives*, 26(2): 189-206.

**Suggested readings**
- Ch. 1: Spraul, V. Anton. 2012. *Think like a
Programmer*. San Francisco: No Starch Press.
- Blackwell, Matthew, and
Maya Sen. 2012. [''Large Datasets and You: A Field Guide''](http://scholar.harvard.edu/files/msen/files/blackwell_sen_tpm.pdf), *The Political Methodologist* 20(1): 2-5.
- Wickham, Hadley. 2014. [''Tidy Data''](http://www.jstatsoft.org/v59/i10). *Journal of Statistical Software*, 59(10): 1–23.
- Leek, Jeff. 2014. [''How to share data with a statistician''](https://github.com/jtleek/datasharing).
- Shotts Jr., William E. 2012. ''The Linux Command Line: A complete introduction''. No Starch Press, San Fransisco. 
- [RegexOne](http://regexone.com/).
- [Eight Terminal Utilities Every OS X Command Line User Should Know](http://www.mitchchn.me/2014/os-x-terminal/).
- [Strings - Dive into Python 3](http://www.diveintopython3.net/strings.html).

**Suggested `R`eadings:**
- [Intro to R videos by Google Developers](https://www.youtube.com/playlist?list=PLOU2XLYxmsIK9qQfztXeybpHvru-TrqAP). Watch videos 1.1 through 2.5.
- Wickham, Hadley. 2010. ''[stringr: modern, consistent string processing](http://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf)''. *The R Journal*. 2(2): 38-40.
- [rex: Friendly regular expressions for R](https://github.com/kevinushey/rex).
- [introduction to dplyr](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)
- [introducing tidyr](http://blog.rstudio.org/2014/07/22/introducing-tidyr/)
- [tidyr In a Nutshell](https://github.com/trinker/tidyr_in_a_nutshell)
- Wickham, Hadley. 2014. [Style Guide](http://adv-r.had.co.nz/Style.html). Advanced R Programming.
- [Google's R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)

## Data visualisation and communication

**Topics**
- A grammar of graphics (layers, scales, axes, themes)
- effective visualizations (examples, Tufte)
- Plotting distributions, annotated line plots, regression coefficients plots, network visualization, maps and spatial analysis, animated plots, small multiples
- Processing geographic information
    - making simple maps
    - introducing and plotting shapefiles
    - projections
    - plotting GPS
points
    - introduction to zonal statistics
- interactive visualizations
    - connecting javascript and `R` using `ggvis` and `rCharts`

**Suggested readings**
- Tufte, Edward R. 2001. The Visual Display of
Quantitative Information. Cheshire, Connecticut: Graphics Press.
- [chartsnthings](http://kpq.github.io/chartsnthings/) - Kevin Quealy’s blog of data sketches, process and junk from the New York Times Graphics Department. Make sure you read [''Climate Change, Crowbars and Strikeouts''](http://chartsnthings.tumblr.com/post/47670081904/climate-change-crowbars-and-strikeouts).
- Acharya, Avidit. Matthew Blackwell, and Maya Sen. 2014. [''The Political Legacy of American Slavery''](http://www.mattblackwell.org/files/papers/slavery.pdf).
- Gelman, Andrew. 2013. [''Choices in statistical graphics: My stories''](http://www.stat.columbia.edu/~gelman/presentations/vistalk_meetup_new_handout.pdf). Slides from presentation at New York Data Visualization Meetup.
- Gelman, Andrew and Antony Unwin. 2012. [''Infovis and Statistical Graphics: Different Goals, Different Looks''](http://www.stat.columbia.edu/~gelman/research/published/vis14.pdf).
- Wickham, Hadley. 2013. [''Graphical criticism: some historical notes''](http://vita.had.co.nz/papers/stat-graph-hist.html), *Journal of Computational and Graphical Statistics*, 22(1): 38–44.

**Suggested `R`eadings:**
- Wickham, Hadley. [ggplot2 documentation](http://ggplot2.org/)
- Kahle, David and Hadley Wickham.
2013.[''ggmap: Spatial Visualization with ggplot2''](http://journal.r-project.org/archive/2013-1/kahle-wickham.pdf),
*The R Journal*, 5(1).
- [python ggplot](https://github.com/yhat/ggplot/blob/master/TODO.md).
- Barbera, Pablo. 2013. [''Data Visualization with R and ggplot2''](https://github.com/pablobarbera/Rdataviz).
- [Overcoming D3 Cartographic Envy With R + ggplot](http://rud.is/b/2014/09/26/overcoming-d3-cartographic-envy-with-r-ggplot/).
- [Introducing ggvis](http://blog.rstudio.org/2014/06/23/introducing-ggvis/).
- [rCharts gallery](http://rcharts.io/gallery/).

## Automatic Data Gathering via Web Scraping

**Topics**
- Introduction to Web API's
    - when a website offers a set of
structured *http* requests that return JSON or XML files
    - examples:
Twitter, Facebook, Instagram, and recently Statistics Denmark,
Folketinget, etc.
- Screen scraping: download and extract data from
source code of website

*Examples*
- query the Google Travel Time API for drive, walk, or bike time
- query the Instagram API and retrieve 20 photos with hashtag ''Obama''
- scrape Airbnb Copenhagen for information about prices, rooms, etc.
- analyze geographic distribution of Facebook likes for Helle Thorning and Lars Løkke using Facebook's API

**Interesting examples using Web data**
- Stephens-Davidowitz, Seth. 2014. ''The cost of racial animus on a black candidate: Evidence using Google search data'', *Journal of Public Economics*, 118: 26–40.
- Barbera, Pablo. 2014. Bayesian Ideal Point Estimation Using Twitter Data, *Political Analysis*.
- Miguel, Edward, Sebastian M Saiegh, and Shanker Satyanath. 2011. [''Civil War Exposure and Violence''](http://www.nyudri.org/wp-content/uploads/2011/11/civilwarexposureandviolence2011.pdf), *Economics & Politics* 23: 59-73.
- Jensen, Jacob, Ethan Kaplan, Suresh Naidu and Laurence Wilse-Samson. 2012. [''Political Polarization and the Dynamics of Political Language: Evidence from 130 Years of Partisan Speech''](http://www.brookings.edu/~/media/projects/bpea/fall%202012/2012b_jensen.pdf), *Brookings Papers on Economic Activity*.
- [How Ukrainian protestors are using Twitter and Facebook](http://www.washingtonpost.com/blogs/monkey-cage/wp/2013/12/04/strategic-use-of-facebook-and-twitter-in-ukrainian-protests/),
*Washington Post*, 2013.

**Suggested `R`eadings:**
- Jackman, Simon. 2006. [''Data from the Web into `R`''](http://polmeth.wustl.edu/methodologist/tpm_v14_n2.pdf), *The Political Methodologist*.
- Rose, Kenneth. 2014. [''`dkstat`: API connection to the StatBank from Statistics Denmark''](https://github.com/rOpenGov/dkstat).
- [rvest: Simple web scraping for R](https://github.com/hadley/rvest) 
- [Introducing the streamR package](http://pablobarbera.com/blog/archives/1.html)
- [Covering election night with R](http://jplusplus.se/covering-election-night-with-r/)

## Version control with git

> Much like James Cameron's *Avatar*, Git doesn't make any goddamn
> sense. - Zach Holman

**Topics**
- introduction to version control - setting up a github
account
- basic `git` functions (`touch`, `init`, `add`, `commit`)
- how to collaborate
- best practices

**Suggested readings**
- Rainey, Carlisle. 2014. [''How I Use Git and GitHub for Political Science Research''](https://github.com/carlislerainey/git-for-political-science)
- Dudler, Roger. 2014. [''`git`: the simple guide''](http://rogerdudler.github.io/git-guide/)
- [Git workflow for beginners](http://skli.se/2012/10/07/git-workflow-beginner/)

## Reproducible research

-   philosophy: what is reproducible research?
-   how might this make my life easier (*or how to avoid being Reinhart
    and Rogoff*)
-   introduction to markdown and literate programming using `knitR`

**Suggested readings:**
- Peng, Roger D. 2011. [''Reproducible Research in Computational Science''](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3383002/pdf/nihms382015.pdf). *Science*. 334(6060): 1226-1227.
- Herndon, Thomas, Michael Ash, and Robert Pollin. Forthcoming. [''Does High Public Debt Consistently Stifle Economic Growth? A critique of Reinhart and Rogoff''](http://cje.oxfordjournals.org/content/early/2013/12/17/cj .bet075.short).
*The Cambridge Journal of Economics*.
- RStudio. 2014. [RMarkdown--Dynamic Documents for R](http://rmarkdown.rstudio.com/).
- Gandrud, Christopher. 2013. *[Reproducible Research with R and RStudio](http://christophergandrud.github.io/RepResR-RStudio/)*. Chapman & Hall/CRC Press, Oxford (*chapters to be decided*).

## Computational data analysis and machine learning

**Topics**
- cross validation and model selection (implications for unbiasedness and consistency, prediction vs causality)
- classification, non-linear models, naive Bayes, support vector machines
- regularization, Ridge, Lasso, and elastic nets
- introduction to tree based methods

**Suggested readings:**
- Hastie, Trevor. Robert Tibshirani, and Jerome Friedman. 2009. [''The Elements of Statistical Learning: Data Mining, Inference, and Prediction''](http://statweb.stanford.edu/~tibs/ElemStatLearn/), *Springer Series in Statistics*. Springer.
- Jones, Zachery M and Fridolin Linder. 2014. [''Data Mining as Exploratory Data Analysis''](https://github.com/zmjones/datamining). 
- Breiman, Leo. 2001. [''Statistical Modeling: The Two Cultures''](http://projecteuclid.org/euclid.ss/1009213726), *Statistical Science*, Volume 16(3): 199-231.
- Gelman, Andrew. 2004. [''Exploratory Data Analysis for Complex Models''](https://www.cs.princeton.edu/courses/archive/fall09/cos597A/papers/Gelman2004.pdf), *Journal of Computational and Graphical Statistics*, 13(4): 755–779.
- Lazer, David. Ryan Kennedy, Gary King, and Alessandro Vespignani. 2014. ''[The Parable of Google Flu: Traps in Big Data Analysis](http://www.sciencemag.org/content/343/6176/1203.summary)''. *Science*. 343(6176): 1203-1205.

## Misc

**Topics**
- Introduction to databases
- how to connect to SQL, noSQL
- High performance computing using Amazon EC2 (you need to use just a
little bit of Linux to do this)
- using [pythonanywhere](https://www.pythonanywhere.com/)
- interactive visualizations using `d3.js`
- use cron to schedule jobs (commands or
shell scripts) to run periodically at fixed times, dates, or intervals
(of course this can also be done from
[R](https://github.com/kevinushey/cronR)).




