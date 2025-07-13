#' Top Income Share
#'
#' Calculates the share of total income held by the top p proportion.
#'
#' @param x Numeric vector of incomes.
#' @param p Proportion of the top income group (default is 0.1 for top 10%).
#' @return Numeric value between 0 and 1 representing the share.
#' @examples
#' top_share(c(1000, 2000, 3000, 4000, 5000), p = 0.2)
#' @export
top_share <- function(x, p = 0.1) {
  stopifnot(is.numeric(x), p > 0, p < 1)
  x_sorted <- sort(x, decreasing = TRUE)
  cutoff <- ceiling(length(x) * p)
  sum_top <- sum(x_sorted[1:cutoff])
  total <- sum(x_sorted)
  share <- sum_top / total
  return(share)
}

