
library("readr")
# survey 1 ----------------------------------
df = read_csv("~/git/sds/data/sds-survey-1.csv")

# survey 2 ----------------------------------
df = read_csv("~/git/sds/data/sds-survey-2.csv")
names(df) = c("ident", "level", "other", 
              "preparation", "difficulty", "comparison_difficulty",
              "comparison_fun", "recommend",
              "challenge", "suggestions", "start", "submit", "network")


library("ggplot2")
p = ggplot(df, aes(x = difficulty))
p + geom_bar()

p = ggplot(df, aes(x = comparison_difficulty))
p + geom_bar()

p = ggplot(df, aes(x = comparison_fun))
p + geom_bar()

# survey 3 ----------------------------------
df = read_csv("~/git/sds/data/sds-survey-3.csv")
names(df) = c("ident", "level", "other", 
              "preparation", "experience", 
              "understanding_R", "topics",
              "pace", "improvement", 
              "start", "submit", "network")

p = ggplot(df, aes(x = experience))
p + geom_bar()

p = ggplot(df, aes(x = understanding_R))
p + geom_bar()

p = ggplot(df, aes(x = topics))
p + geom_bar()

p = ggplot(df, aes(x = pace))
p + geom_bar()

# time spent
library("dplyr")
df.1 = read_csv("~/git/sds/data/sds-survey-1.csv") %>% 
  select(hours) %>% 
  mutate(
    survey = "1"
  )

df.2 = read_csv("~/git/sds/data/sds-survey-2.csv")
names(df.2) = c("ident", "level", "other", 
              "preparation", "difficulty", "comparison_difficulty",
              "comparison_fun", "recommend",
              "challenge", "suggestions", "start", "submit", "network")
df.2 = df.2 %>% 
  select(preparation) %>% 
  rename(hours = preparation) %>% 
  mutate(
    survey = "2"
  )

df.3 = read_csv("~/git/sds/data/sds-survey-3.csv")
names(df.3) = c("ident", "level", "other", 
              "preparation", "experience", 
              "understanding_R", "topics",
              "pace", "improvement", 
              "start", "submit", "network")
df.3 = df.3 %>% 
  select(preparation) %>% 
  rename(hours = preparation) %>% 
  mutate(
    survey = "3"
  )

df = bind_rows(df.1, df.2, df.3)

p = ggplot(df, aes(x = as.numeric(hours)))
p + geom_density(aes(fill = survey), alpha = .5)

df %>% 
  group_by(survey) %>% 
  summarise(hours = mean(as.numeric(hours), na.rm = TRUE))
