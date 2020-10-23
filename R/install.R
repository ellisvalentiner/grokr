#' Install pygrok
#'
#' @param method Installation method, passed to py_install
#' @param conda Path to conda, passed to py_install
#'
#' @export install_pygrok
#'
#' @examples
#' \dontrun{
#' install_pygrok()
#' }
install_pygrok <- function(method = "auto", conda = "auto") {
  reticulate::py_install("pygrok", method = method, conda = conda)
}
