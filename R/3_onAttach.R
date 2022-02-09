#' @import data.table ggplot2
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0(
    "splshiny ",
    # utils::packageDescription("splshiny")$Version,
    "\n",
    "https://docs.sykdomspulsen.no/splshiny"
  ))
}
