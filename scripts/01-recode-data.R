# ADD EXAMPLE FOR ONE VARIABLE

# RECODE ALL VARIABLES AT THE SAME TIME
data_rec <- data %>% 
  mutate_at(
    c("gad_1", "gad_2", "gad_3", "gad_4", "gad_5", "gad_6", "gad_7"),
    funs(case_when(
      . == 1 ~ 0,
      . == 2 ~ 1,
      . == 3 ~ 2,
      . == 4 ~ 3))) 

# COMPUTE SUM SCORE
data_rec <- data_rec %>% 
  mutate(gad_sum = rowSums(data_rec[, c("gad_1", "gad_2", "gad_3", "gad_4", "gad_5", "gad_6", "gad_7")], na.rm = T),
         crs_sum = rowSums(data_rec[, c("crs_1", "crs_2", "crs_3", "crs_4", "crs_5", "crs_6", "crs_7", "crs_8")], na.rm = T))

# EXERCISE, CALCULATE SUMS FOR 'crs' and 'crs_cont'


