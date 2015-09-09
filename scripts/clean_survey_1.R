library("readr")
library("dplyr")

df = read_csv("https://raw.githubusercontent.com/sebastianbarfort/sds/master/data/sds-survey-1.csv", col_types = list(
  Start.Date..UTC. = col_character(),
  Submit.Date..UTC. = col_character()
))

df = df %>%
  mutate(
    time = parse_datetime(Submit.Date..UTC.) - parse_datetime(Start.Date..UTC.)
  )

names(df) = gsub("What.is.your.", "", names(df))

df = df %>%
  mutate(
    field.of.study. = ifelse(field.of.study. == "", Other, field.of.study.),
    Are.you.a.BA.or.MA.student. = ifelse(Are.you.a.BA.or.MA.student. == "", Other.1, Are.you.a.BA.or.MA.student.)
  )

df = df %>%
  select(field.of.study., Are.you.taking.this.course.for.credit., 
    How.many.hours.do.you..honestly..expect.to.spend.on.preparation.for.this.course.per.week., Do.you.consider.your.computing.skills.to.be, What.kind.of.system.do.you.use.,
    Are.you.a.BA.or.MA.student., age., gender., time)

names(df) = c("field.of.study", "credit", "hours", "computing.skills", 
  "system", "degree", "age", "gender", "time.spent")

df$hours = ifelse(df$hours == "", NA, df$hours)
df$computing.skills= ifelse(df$computing.skills == "", NA, df$computing.skills)
df$degree= ifelse(df$degree == "", NA, df$degree)
df$system= ifelse(df$system == "", NA, df$system)

write.csv(df, "/Users/sebastianbarfort/git/sds/data/sds-survey-1.csv", row.names = FALSE)
