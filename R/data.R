#' Demographic data
#'
#' TBD
#'
#' @format ## `who`
#' A tibble with `r nrow(demo)` rows and `r ncol(demo)` columns:
#' \describe{
#'   \item{STUDYID}{Study ID}
#'   \item{DOMAIN}{Data domain}
#'   ...
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/dm.xpt>
"demo"

#' Exposure data
#'
#' TBD
#'
#' @format ## `who`
#' A tibble with `r nrow(exposure)` rows and `r ncol(exposure)` columns:
#' \describe{
#'   \item{STUDYID}{Study ID}
#'   \item{DOMAIN}{Data domain}
#'   ...
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ex.xpt>
"exposure"

#' Laboratory data
#'
#' TBD
#'
#' @format ## `who`
#' A tibble with `r nrow(lab)` rows and `r ncol(lab)` columns:
#' \describe{
#'   \item{STUDYID}{Study ID}
#'   \item{DOMAIN}{Data domain}
#'   ...
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/lb.xpt>
"lab"

#' Adverse event data
#'
#' TBD
#'
#' @format ## `who`
#' A tibble with `r nrow(ae)` rows and `r ncol(ae)` columns:
#' \describe{
#'   \item{STUDYID}{Study ID}
#'   \item{DOMAIN}{Data domain}
#'   ...
#' }
#' @source <https://github.com/cdisc-org/sdtm-adam-pilot-project/raw/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/tabulations/sdtm/ae.xpt>
"ae"

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