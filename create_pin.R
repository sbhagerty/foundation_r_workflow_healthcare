library(pins)
library(tidyverse)

connectAPIKey <- Sys.getenv("CONNECT_SERVER_KEY")

board_register("rsconnect",
               server = Sys.getenv("CONNECT_SERVER"),
               key = connectAPIKey)



read_csv('visits_by_hospital.csv') %>% 
    pin("simulated_hospital_visits", board = "rsconnect")
  