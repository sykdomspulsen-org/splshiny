#' @import data.table ggplot2 shiny
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
  version <- tryCatch(
    utils::packageDescription("splshiny", fields = "Version"),
    warning = function(w){
      1
    }
  )
  packageStartupMessage(paste0(
    "splshiny ",
    version,
    "\n",
    "https://docs.sykdomspulsen.no/splshiny"
  ))
}
