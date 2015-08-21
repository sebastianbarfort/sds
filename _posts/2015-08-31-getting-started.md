---
layout: post
title:  "Intro I: Getting Started"
categories: posts
---

This class will involve a good deal of coding, for which you will need some basic tools. Please make sure to set up the following tools before the first day of class.

1. [A text editor](#a-text-editor)
2. [R and RStudio](#r-and-rstudio)
3. [A git client](#a-git-client)
4. [A github account](#a-github-account)  

We will discuss these tools in much more detail in class, so don't worry if this is all new and perhaps a bit frightening right now.

If you want to prepare yourself before we meet, I recommend reading [these great tips](http://www.the-scientist.com/?articles.view/articleNo/43632/title/Get-With-the-Program/) in The Scientist for learning how to code.

## A text editor

One of the most important tools you will need for this course is a decent text editor. A text editor is a program that lets you work with plain-text files. You should pick an editor capable of syntax highlighting, syntax checking (ensuring that brackets and parentheses are properly paired), and handling multiple files. Two highly recommended options are

- [Sublime Text](http://www.sublimetext.com/)
- [Atom](https://atom.io/)

Try to spend a little time familiarizing yourself with your editor. For instance, try learning a few of your editor's keyboard shortcuts. The point is to be as productive as possible when working with the computer.
Karl Broman, a professor of biostatistics and medical informatics at the University of Wisconsin-Madison, gives some great advice for working with code

> The key thing I emphasize to students is they should be using the mouse as
> little as possible. Every time you move your hands away from the keys,
> you’re slowing yourself down.

## R and RStudio

[R](http://www.r-project.org/) is a free software environment for statistical computing and graphics. We will use this throughout the course, so please make sure it is installed on your computer before first day of class. It works on all platforms.

Since the vast majority of our coding will be in the R language, we will use an integrated development environment ([IDE](http://en.wikipedia.org/wiki/Integrated_development_environment)). IDEs integrate text editing, syntax highlighting, and version control,
simplifying the coding process. I urge you to download and use [RStudio](http://www.rstudio.com/). It's free and modern, and if you're new to R this will make it much easier to get started. All R coding in this course will be done in RStudio.

Once installed, try to open up RStudio and type the following in the console (lines that start with `##` are the console's output)


{% highlight r %}
x <- 5
y <- 2
x + y
{% endhighlight %}



{% highlight text %}
## [1] 7
{% endhighlight %}



{% highlight r %}
print("R is running on my computer")
{% endhighlight %}



{% highlight text %}
## [1] "R is running on my computer"
{% endhighlight %}
Don't worry if the commands above make no sense to you right now. We will cover installation and introduction to R in much more detail in the [next post](xxx).

## A Git client

[Git](http://git-scm.com) is a version control system that allows you to track modifications to files and code over time. It also facilitates collaborations so that multiple people can share and edit the same code base.

If you are on Windows you can install [Github Desktop](https://desktop.github.com) which provides both the command line tool for git and a graphical user interface. Alternatively, you can install git as an optional package under Cygwin. I recommend the Github application, as it will be easier to interface with Github using it. Likewise, modern versions of Mac OS X have a command line git client installed by default, but the [Github Desktop](https://desktop.github.com) tool is a recommended addition.

## A Github account

[Github](http://github.com)is a platform that facilitates collaboration on projects that use git. You can use it to host projects, publish them to the web, and share them with other people. [Create a free account](https://help.github.com/articles/signing-up-for-a-new-github-account/) if you don't already have one.

Once you have an account, clone the [course repository](https://github.com/sebastianbarfort/sds) using your local git client. This is most easily done on the command line as follows:

    # git clone https://github.com/sebastianbarfort/sds
	Cloning into 'sds'...
	remote: Counting objects: 145, done.
	remote: Compressing objects: 100% (98/98), done.
	remote: Total 145 (delta 40), reused 137 (delta 37)
	Receiving objects: 100% (145/145), 454.90 KiB | 594.00 KiB/s, done.
	Resolving deltas: 100% (40/40), done.
	Checking connectivity... done.

When this is complete, verify that you have a local directory called ``sds`` containing a ``README.md`` file.

