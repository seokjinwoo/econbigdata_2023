library(httr)
library(xml2)
library(dplyr)
library(purrr)
library(writexl)

url <- 'https://openapi.openfiscaldata.go.kr/IncomeTax'
key <- ""

years <- 2014:2023

df_list <- list()

for (year in years) {
  q = list(Type = 'xml', 
           pIndex = '1', 
           pSize = '100', 
           OJ_YY = as.character(year), 
           Key = key)
  
  response <- GET(url, query = q)
  content <- content(response, "text", encoding = "UTF-8")
  xml <- read_xml(content)
  
  rows <- xml_find_all(xml, ".//row")
  data <- map_df(rows, ~{
    children <- xml_children(.x)
    data_frame <- setNames(as.data.frame(t(xml_text(children))), 
                           xml_name(children))
    return(data_frame)
  })
  
  df_list <- append(df_list, list(data))
}

df <- bind_rows(df_list)

# Using gsub to remove all kinds of white spaces
df$ISMOK_NM <- gsub("[[:space:][:cntrl:]]+", "", df$ISMOK_NM)

# Export DataFrame to Excel
output_file <- "income_data.xlsx"
write_xlsx(df, output_file)
