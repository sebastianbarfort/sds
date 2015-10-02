
read_data = function(string, kontoplan, udgift = FALSE){
  require("dplyr")
  require("stringr")
  require("tidyr")
  require("lazyeval")
  df = read.csv(string, sep = ";", skip = 1, encoding = "latin1", header = FALSE, dec = ",") %>%
    mutate(code = str_extract(V1, "[0-9]+"),
           V1 = gsub("[0-9]+ ", "", V1))
  names(df) = c("kontoplan", 2014:2019, "code")
  df = df %>% gather(aar, udgift, -c(kontoplan, code))
  names(df)[1] = kontoplan
  names(df)[2] = paste(kontoplan, "code", sep = ".")
  if(!isTRUE(udgift))
    df = df[, 1:2]
  return(df)
}

df.paragraf = read_data("http://oes-cs.dk/OLAPDATABASE/FINANSLOV/download/5DDADC.csv",
                        kontoplan = "paragraf")
df.hovedomrode = read_data("http://oes-cs.dk/OLAPDATABASE/FINANSLOV/download/5DF0A7.csv",
                           kontoplan = "hovedomrode")
df.aktivitet = read_data("http://oes-cs.dk/OLAPDATABASE/FINANSLOV/download/5DFE73.csv",
                         kontoplan = "aktivitet")
df.hovedkonto = read_data("http://oes-cs.dk/OLAPDATABASE/FINANSLOV/download/5E055A.csv",
                          kontoplan = "hovedkonto", udgift = TRUE) 

df.hovedkonto$aktivitet.code = substr(x = df.hovedkonto$hovedkonto.code, 
                                      start = 1, stop = 4)
df.hovedkonto$hovedomrode.code = substr(x = df.hovedkonto$aktivitet.code, 
                                        start = 1, stop = 3)
df.hovedkonto$paragraf.code = substr(x = df.hovedkonto$hovedomrode.code, 
                                     start = 1, stop = 2)

df = left_join(df.hovedkonto, unique(df.paragraf))
df = left_join(df, unique(df.hovedomrode))
df = left_join(df, unique(df.aktivitet))

df = df %>% 
  select(-c(hovedkonto.code, aktivitet.code, hovedomrode.code, paragraf.code)) %>%
  select(paragraf, hovedomrode, aktivitet, hovedkonto, aar, udgift)
  
write.csv(df, file = "~/git/sds/data/finanslov_tidy.csv", row.names = FALSE, 
          fileEncoding = "UTF-8")