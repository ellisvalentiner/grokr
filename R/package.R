#' pygrok module object
#'
#' Uses the reticulate framework to access the pygrok module
#'
#' @export pygrok
pygrok <- NULL

.onLoad <- function(libname, pkgname) {
  pygrok <<- reticulate::import("pygrok", delay_load = TRUE)
}
