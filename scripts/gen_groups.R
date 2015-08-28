
library("readxl")

df = read_excel("~/git/sds/data/participants.xlsx",
  col_names = FALSE)

df$group = rep(1:27, each = 4)[-108]

names(df) = c("name", "role", "group")

write.csv(df, file = "~/git/sds/data/groups.csv",
  row.names = FALSE, fileEncoding = "ISO-8859-1")