# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}

usethis::use_git_config(user.name = "malicmarijana", user.email = "malic.marijana@gmail.com")
usethis::use_git()
usethis::use_github()
usethis::use_roxygen_md()
usethis::use_package("ggplot2")

usethis::use_r("gini_index")
usethis::use_r("lorenz_curve")
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)

devtools::document()

devtools::document(roclets = c("namespace", "rd"))
