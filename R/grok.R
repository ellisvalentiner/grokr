#' grok
#'
#' @param pattern the pattern to be matched
#' @param custom_patterns_dir used to pass custom patterns
#' @param custom_patterns_list used to pass custom patterns
#'
#' @return list with variable names specified in pattern and their corresponding values
#'
#' @export grok
grok <- function(pattern="", custom_patterns_dir=NULL, custom_patterns_list=reticulate::dict()) {
  pygrok$Grok(pattern, custom_patterns_dir, custom_patterns_list)
}

#' grok_match
#'
#' @param string input vector. Either a character vector, or something coercible to one.
#' @param pattern the pattern to be matched
#' @param custom_patterns_dir used to pass custom patterns
#' @param custom_patterns_list used to pass custom patterns
#'
#' @return
#' @export grok_match
grok_match <- function(string, pattern="", custom_patterns_dir=NULL, custom_patterns_list=reticulate::dict()) {
  g <- pygrok$Grok(pattern, custom_patterns_dir, custom_patterns_list)
  purrr::map(string, g$match)
}
