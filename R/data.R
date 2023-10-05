#' CDISC clinical data
#'
#' TBD
#'
#' @format ## `who`
#' A list of tibbles:
#' \describe{
#'   \item{demo}{Demographic data}
#'   \item{expo}{Exposure data}
#'   \item{lab}{Laboratory data}
#'   \item{ae}{Adverse event data}
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations>
"raw_data"

#' Merged data
#'
#' raw_data$lab are merged to raw_data$demo by "STUDYID" and "USUBJID" via inner_join.
#'
#' @format ## `who`
#' A tibble with `r nrow(merged_data)` rows and `r ncol(merged_data)` columns:
#' \describe{
#'   \item{STUDYID}{Study ID}
#'   \item{DOMAIN}{Data domain}
#'   ...
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations>
"merged_data"