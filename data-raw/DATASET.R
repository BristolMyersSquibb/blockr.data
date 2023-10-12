## code to prepare `DATASET` dataset goes here
library(dplyr)
library(haven)
demo <- read_xpt("https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/dm.xpt")
exposure <- read_xpt("https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ex.xpt")
lab <- read_xpt("https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/lb.xpt")
ae <- read_xpt("https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ae.xpt")

merged_data <- lab |>
  # Perform inner join on STUDYID and USUBJID
  inner_join(demo, by = c("STUDYID", "USUBJID"))

usethis::use_data(demo, overwrite = TRUE)
usethis::use_data(exposure, overwrite = TRUE)
usethis::use_data(lab, overwrite = TRUE)
usethis::use_data(ae, overwrite = TRUE)
usethis::use_data(merged_data, overwrite = TRUE)