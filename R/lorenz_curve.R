#' Plot Lorenz Curve
#'
#' Creates a Lorenz curve for a numeric vector.
#'
#' @param x A numeric vector (e.g., incomes).
#' @return A ggplot object showing the Lorenz curve.
#' @examples
#' lorenz_curve(c(10, 20, 30, 40, 50))
#' @export
#' @importFrom ggplot2 ggplot aes geom_line geom_abline labs
lorenz_curve <- function(x) {
  x <- sort(x, na.last = NA)
  n <- length(x)
  cum_x <- cumsum(x)
  p <- (1:n) / n
  L <- cum_x / sum(x)

  df <- data.frame(
    population = c(0, p),
    share = c(0, L)
  )

  ggplot(df, aes(x = population, y = share)) +
    geom_line(color = "blue") +
    geom_abline(slope = 1, intercept = 0, linetype = "dashed") +
    labs(title = "Lorenz Curve",
         x = "Cumulative Population Share",
         y = "Cumulative Income Share")
}
