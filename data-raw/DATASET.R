## code to prepare `DATASET` dataset goes here
data_paths <- list(
  demo = "https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/dm.xpt",
  expo  = "https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ex.xpt",
  lab = "https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/lb.xpt",
  ae = "https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ae.xpt"
)

raw_data <- lapply(data_paths, haven::read_xpt)
merged_data <- raw_data$lab |>
  # Perform inner join on STUDYID and USUBJID
  dplyr::inner_join(raw_data$demo, by = c("STUDYID", "USUBJID"))

usethis::use_data(raw_data, overwrite = TRUE)
usethis::use_data(merged_data, overwrite = TRUE)