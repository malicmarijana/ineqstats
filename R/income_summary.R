#' Income Summary Statistics
#'
#' Provides summary statistics (median, mean, min, max, variance) for income data.
#'
#' @param x Numeric vector of incomes.
#' @return A named list with summary statistics.
#' @examples
#' income_summary(c(1000, 2000, 3000, 4000, 5000))
#' @export
income_summary <- function(x) {
  stopifnot(is.numeric(x))
  stats <- list(
    median = median(x),
    mean = mean(x),
    min = min(x),
    max = max(x),
    variance = var(x)
  )
  return(stats)
}
