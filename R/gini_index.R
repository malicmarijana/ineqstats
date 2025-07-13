#' Calculate Gini Coefficient
#'
#' Computes the Gini index of inequality for a numeric vector.
#'
#' @param x A numeric vector (e.g., income or wealth).
#' @return A numeric value between 0 and 1 representing the Gini coefficient.
#' @examples
#' gini_index(c(1000, 2000, 3000, 4000, 5000))
#' @export
gini_index <- function(x) {
  if (!is.numeric(x)) stop("Input must be numeric.")
  if (any(x < 0, na.rm = TRUE)) stop("Values must be non-negative.")

  x <- sort(x, na.last = NA)
  n <- length(x)
  if (n == 0 || sum(x) == 0) return(NA_real_)

  index <- 2 * sum(x * seq_along(x)) / (n * sum(x)) - (n + 1) / n
  return(index)
}
