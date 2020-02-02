## load the libraries
library(tidyverse)
library(haven)
library(skimr)

# Load data ----
raw_data <- read_csv("raw-data/Block_Practical_2019_raw.csv") %>% 
  rename_all(tolower) 

# SELECT VARIABLES FOR FURTHER ANALYSIS ----
data <- raw_data %>% 
  # Create id variable
  mutate(id = 1:nrow(raw_data)) %>% 
  # Select variables
  select("id", 
         "age", "gender","education", "field_study", "ethnicity", "religion",
         "gad_1", "gad_2", "gad_3", "gad_4", "gad_5", "gad_6", "gad_7",
         "crs_1", "crs_2", "crs_3", "crs_4", "crs_5", "crs_6", "crs_7", "crs_8",
         "crs_cont_1", "crs_cont_2", "crs_cont_3", "crs_cont_4", "crs_cont_5", "crs_cont_6", "crs_cont_7", "crs_cont_8")

skim(data)


