#' pygrok module object
#'
#' Uses the reticulate framework to access the pygrok module
#'
#' @export grokr
grokr <- NULL

.onLoad <- function(libname, pkgname) {
  grokr <<- reticulate::import("pygrok", delay_load = TRUE)
}
