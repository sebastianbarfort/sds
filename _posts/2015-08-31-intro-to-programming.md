---
layout: post
title:  "Intro II: A Few Tips for Coding (or Say Big Data One More Time)"
categories: posts
---

> Being a programmer means feeling stupid all the time, but less stupid than a year ago.  
[David Christiansen](https://twitter.com/aldos)

Before we get started with R it is worth spending just a couple of minutes thinking about why we're spending our time learning a programming language in the first place. Writing code is really about creative problem solving. We have some problem - maybe we want to analyze an interesting dataset or scrape some data from the web - and we write code to help us solve that problem. Problems usually have constraints. Common programming constraints include the programming language, platform, performance, etc. When working with code, we can define problem solving as writing a piece of code that performs a particular set of tasks given a set of constraints.

Writing good code often involve trading off two types of constraints: **cognition time** and **computation time**. [Hadley Wickham](https://dl.dropboxusercontent.com/u/41902/expressive-da-2-strata.pdf), author of many great R packages, describes a data analysis workflow as follows

![](/sds/figs/constraints.png)

Before we write any code we need to *think* about the problem (for instance, how should our data look if we were to perform a particular regression?) and we need to *describe* exactly which steps are needed to achieve a given solution. Both steps can be done without opening your computer and they involve cognitive constraints. At last, we need the program to *execute* our code and deliver the output. One simple way to think about the difference between big and small/medium sized data is as follows

- cognition time > computation time: you're dealing with **small**/**medium** sized data
- computation time > cognition time: you're most likely dealing with **big data**.

Although we will spend significant time learning how to code in R, we will always focus on minimizing the cognitive costs of doing data analysis. When you've learning some sound principles for doing storing and working with small/medium sized data you're better equipped to minimize computational costs as well.

So while this course will be technical and have a steep learning curve, we will not be dragged into the big data hype without a fight

![](/sds/figs/big-data.jpeg)

<br>

## A few tips

In the next post, I will introduce the basics of R. Before we get that far, however, here are a few tips for writing good code that you might want to think about in the rest of the course

- **code is plain-text**: we will write all our code as plain-text files. Basically, that means that our files should be readable without any processing. This is different from formatted text, where style information is included. Microsoft Word is an example of the latter. It is practically impossible to open a Word file in any other program than Word. This is because that file includes style information that Microsoft Word has to render in order for the program to be readable. Plain-text files can be read or opened by any program that reads text and, for that reason, are considered platform independent. R scripts are basically plain-text files, but the convention is to save them with the extension `.R`.

- **style guides are important**: good coding style is like using correct punctuation, and as with styles of punctuation, there are many possible variations. Everything is likely to be confusing when you're learning a new programming language, so try to make a habit of writing as clean code as possible from the beginning. We will follow [this](http://adv-r.had.co.nz/Style.html) style guide when coding in R. Among other things, that means that

    - variable and function names are lowercase
    - files that need to be run in sequence are prefixed with numbers
    - nouns are used for variable names and verbs for function names  
<br>

- **be lazy (write functions)**: one of the key points of learning R for data analysis is that allows us to be lazy by writing functions. So every time you copy paste some code in the same script you might want to stop, write a function, and call that instead. Functions in R are a group of instructions that take inputs, use them to compute other values, and return a result, and you will learn much more about them in the next posts.

- **prepare for frustration**: learning new skills is always a frustrating adventure. This is true for everything you will ever do, but remember that if you're not frustrated when learning a new skill, you're probably not stretching yourself enough mentally. Or, as [Hadley Wickham](http://youtu.be/8SGif63VW6E?t=4m7s) puts it

> The bad news is that when ever you learn a new skill you're going to suck. It's going to be frustrating. The good news is that is typical and happens to everyone and it is only temporary. You can't go from knowing nothing to becoming an expert without going through a period of great frustration and great suckiness.

## References

This post builds on thoughts and ideas from [Jenny Brian](http://www.slideshare.net/jenniferbryan5811/ubc-stat545-2014-cm001-intro-tocourse?related=1)'s Stat 545 course, V. Anton Spraul's [Think Like a Programmer](https://www.nostarch.com/thinklikeaprogrammer), as well as [Hadley Wickham](http://adv-r.had.co.nz/)'s Advanced R book.  

If you're interested, and want to delve deeper into coding and programming (you certainly don't have to, they are not required for this course), I highly recommend the following

- [What is Code?](http://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/?cmpid=twtr1): Paul Ford explains the workings of a computer in Bloomberg Business
- [Think Like a Programmer](https://www.nostarch.com/thinklikeaprogrammer): V. Anton Spraul's book about creative problem solving with code.

For a fun, alternative, and provocative essay on programming I enjoyed reading [Programming Sucks](http://www.stilldrinking.org/programming-sucks).




Links:

- http://www.slideshare.net/jenniferbryan5811/ubc-stat545-2014-cm001-intro-tocourse?related=1

**general**

- http://www.compjour.org/
- https://gist.github.com/hadley/820f09ded347c62c2864

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


** data science**

- http://www.kdnuggets.com/2015/07/data-science-degrees-analyzed.html
- http://bulletin.imstat.org/2014/09/data-science-how-is-it-different-to-statistics%E2%80%89/
- http://www.chalmers.se/en/areas-of-advance/ict/events/Documents/Terry%20Speed_Data%20Science,%20Big%20Data%20and%20Statistics%20-%20Can%20We%20All%20Live%20Together.pdf
- https://dl.dropboxusercontent.com/u/41902/future-da-5-unconf.pdf
