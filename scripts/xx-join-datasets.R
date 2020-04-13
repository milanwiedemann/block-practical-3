# Example how to join different datasets by an ID variable
# For help see chapter on Relational Data in R4DS: https://r4ds.had.co.nz/relational-data.html

# Load Packages ----

# tidyverse for data manipulation and visualisation
# install.packages("tidyverse")
library(tidyverse)

# haven for loading data into R
# install.packages("haven")
library(haven)


# Load data ----
# Load file: mcs4_aspirations_classifications.sav
data_01 <- read_sav("mch-data/UKDA-6411-spss/spss/spss19/mcs4_aspirations_classifications.sav")

data_01 <- data_01 %>% 
  select()

mcs4_cm_assessment <- read_sav("mch-data/UKDA-6411-spss/spss/spss19/mcs4_cm_assessment.sav")
mcs4_derived_variables <- read_sav("mch-data/UKDA-6411-spss/spss/spss19/mcs4_derived_variables.sav")

data_01 <- mcs4_cm_assessment %>% 
  select(MCSID, DCCSEX00)


mcs4_assessment %>% 
  select(MCSID, DCCSEX00, DCAGEY00)

data_02 <- mcs4_derived_variables %>% 
 #  select(MCSID, DPKESS00) # here we select two vars


# combine data 01 with data 02
data_join <- left_join(data_01, data_02, by = "MCSID")



