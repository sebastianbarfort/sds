
#### FØRST DEFINERER VI ET PAR FUNKTIONER ### 

# funktion: henter alle links til leaders, finance & Europe fra en given Economist udgave 
give_me_all_issue_links = function(link){
  my.link = read_html(link)
  issue.links = my.link %>% 
    html_nodes("a+ a") %>% 
    html_attr("href")
  return(issue.links)
}

give_me_all_the_links = function(link){
  my.link = read_html(link)
  my.leader.link = my.link %>% 
    html_nodes("#section-69 .node-link") %>% 
    html_attr("href")
  my.finance.link = my.link %>% 
    html_nodes("#section-79 .node-link") %>% 
    html_attr("href")
  my.europe.link = my.link %>% 
    html_nodes("#section-75 .node-link") %>% 
    html_attr("href")
  all.the.links = c(my.leader.link, my.finance.link, my.europe.link)
  return(all.the.links)
}

# funktion der tager data fra et givent link til en artikel
give_me_all_the_text = function(link){
  first.link.parsed = read_html(link)
  
  headline = first.link.parsed %>% 
    html_nodes(".headline") %>% 
    html_text()
  
  rubric = first.link.parsed %>% 
    html_nodes(".rubric") %>% 
    html_text()
  
  article.text = first.link.parsed %>% 
    html_nodes(".main-content p") %>% 
    html_text()
  
  article.text = paste(article.text, collapse = " ")
  
  date = first.link.parsed %>% 
    html_nodes(".date-created") %>% 
    html_text() %>% 
    str_trim()
  
  df = data.frame(headline, rubric, article.text, date)
  return(df)
}

## NU HENTER VI DATA 
library("rvest")
library("stringr")
library("plyr")
library("dplyr")

# links til alle Economist udgaver ALTID

economist.links = paste("http://www.economist.com/printedition/covers?print_region=76975&date_filter%5Bvalue%5D%5Byear%5D=", 2006:2015, sep = "")

all.issues.in.economist = list()
for (i in economist.links){
  all.issues.in.economist[[i]] = give_me_all_issue_links(i)
}

all.issues.in.economist = unlist(all.issues.in.economist)
all.issues.in.economist = paste("http://www.economist.com/", all.issues.in.economist, sep = "")

all.articles.in.economist = list()
for (i in all.issues.in.economist[1:5]){ #hvis du vil have AL text fra 2006:15 - erstat all.issues.in.economist[1:20] med all.issues.in.economist
  all.articles.in.economist[[i]] = give_me_all_the_links(i)
}

all.articles.in.economist = unlist(all.articles.in.economist)
all.articles.in.economist = paste("http://www.economist.com/", all.articles.in.economist, sep = "")

all.text.in.economist = list()
for (i in all.articles.in.economist){ #hvis du vil have AL text fra 2006:15 - erstat all.articles.in.economist[1:2] med all.articles.in.economist
  all.text.in.economist[[i]] = give_me_all_the_text(i) #output her er en data frame med artikel navn, dato, text, etc
}

all.text.in.economist = ldply(all.text.in.economist)


