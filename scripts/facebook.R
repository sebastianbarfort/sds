library("Rfacebook")

token <- "CAACEdEose0cBAPiIMfVufv8ZCam08snNRzlQC7UsRwCqxvuvw6suXrsYyZCwkXJNRlr1Hs6MVEO65aPmKi785GO48wp6Ek5SZAzcpmEORij5tdPLtZBuEQHnIwYbeygFvZAI4cEOV59sOLhzPATivMUZBoMUvZCEWppW4VjjSqIoDZCBmtuMMKoVCzzis3Il4hX6rEUjQh5ciwZDZD" 

page <- getPage("politiken", token, n = 5000)

write.csv(page, "~/Desktop/politiken.csv", row.names = FALSE)