## EXERCISE EXPLORE THE DISTRIBUTION ----

ggplot(data_rec, aes(gad_sum)) +
  geom_histogram()

ggplot(data_rec, aes(crs_sum)) +
  geom_histogram()

# data_rec <- data_rec %>% 
#   mutate(age = ifelse(age > 150, NA, age))

## SCATTERPLOTS ----
ggplot(data = data_rec, aes(x = gad_sum, y = crs_sum, color = factor(gender))) + 
  geom_point()

