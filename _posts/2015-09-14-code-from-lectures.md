---
layout: post
title:  "Code from lectures"
categories: posts
---

If you want an R script for the code examples that I use in my lecture slides, you can use the `knitr` library and the following piece of code. *All* the slides for this course are located in [this](https://github.com/sebastianbarfort/sds/tree/gh-pages/_slides) folder, and you can generate an R script by running the following piece of code

{% highlight r %}
# install.packages("knitr")
library("knitr")
purl("https://raw.githubusercontent.com/sebastianbarfort/sds/gh-pages/_slides/lecture3.Rmd")
{% endhighlight %}

This will generate an R script called `lecture3.R` on your computer with all the code (you can control where the R script is saved using the `output` argument in the `purl` call, see the documentation for details). If you want the code for lecture 2 instead, just change `/lecture3.Rmd` to `lecture2.Rmd` in the `purl` call above. This will generate an R script called `lecture2.R` on your computer.
