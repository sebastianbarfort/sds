library(gh) # install_github("gaborcsardi/gh")
library(httr)
library(dplyr)
library(stringr)

# Use .limit = Inf to pull down all issues
issues <- gh("/repos/sebastianbarfort/sds/issues", accept("application/vnd.github.v3.text+json"))

titles <- vapply(issues, "[[", character(1), "title")
bodies <- vapply(issues, "[[", character(1), "body")

df = data.frame(titles, bodies)
df$file = grepl(".\\[*\\]", df$bodies)
df = df %>% filter(grepl("assignment 2", tolower(titles)) != TRUE)

df$group.nr = str_extract(tolower(as.character(df$titles)), "group [0-9]+|team [0-9]+")

df = df %>% select(titles, bodies) 

write.table(df, file = "/Users/sbarfort/git/sds/test.txt", quote = FALSE, 
            row.names = rep("#", nrow(df)), col.names = FALSE)