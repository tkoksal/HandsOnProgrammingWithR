library(ggplot2)

roll <- function(die = 1:6) {
  dice <- sample(x = die, size = 2, replace = TRUE, prob = c(rep(1/8, 5), 3/8))
  sum(dice)
}

rolls <- replicate(n=10000, roll())

qplot(rolls, binwidth = 1)