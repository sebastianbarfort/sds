
library("readr")

# read the data into memory 
df = read.csv("http://blog.yhathq.com/static/misc/data/marijuana-street-price-clean.csv")
df = read_csv("http://blog.yhathq.com/static/misc/data/marijuana-street-price-clean.csv")

# dimensions of data
dim(df)

# get summary statistics
summary(df)

# plot the data 
library("ggplot2")
p = ggplot(df, aes(x = date, y = HighQ))
p = p + geom_point(alpha = .05) # add points
p = p + geom_line() # add points
p = p + geom_smooth(colour = "red")
p = p + facet_wrap(~ State, scales = "free_y")
p = p + scale_x_date(breaks = pretty_breaks(4))
p = p + labs(x = NULL, y = "Price ($)", title = "Price of Marijuana")

ggsave(plot = p, 
  file = "~/git/sds/plots/marijouana.png",
  height = 8, width = 14)
