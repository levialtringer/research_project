
########################################################################################################################
########################################################################################################################
##                                MY GROUND-BREAKING, EARTH-SHATTERING RESEARCH PROJECT                               ##
########################################################################################################################
########################################################################################################################


# Clear environment:
rm(list = ls())


# Load libraries:
library(ggplot2)


# Bring in data:
some_data <- read.csv("data/research_data.csv")


# Generate some data:
more_data <- data.frame(x = c(6, 9, 15, 17, 5, 13, 16, 7, 10, 14, 7, 9, 11, 
                                   14, 8, 14, 9, 12, 11, 12, 14, 11, 17, 10))
more_data$y <- c(4, 5, 4, 4, 5, 5, 5, 6, 6, 6, 8, 8, 8, 8, 10,
                      10, 11, 11, 12, 13, 10, 16, 7, 14)
more_data$color <- factor(c(1, 2, 2, 3, 2, 3, 1, 3, 1, 1, 1, 2, 1, 2,
                                  3, 3, 2, 1, 3, 2, 1, 3, 3, 1))
more_data$size <- c(1, 3, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 3, 3, 3,
                         2, 3, 1, 1, 2, 2, 3, 3, 2)


# Generate more data:
number <- 50
total <- sum(round(number * 0.35) +
               round(number * 0.20) +
               round(number * 0.17) + 
               round(number * 0.13) +
               round(number * 0.10) + 
               round(number * 0.05))
even_more_data <- data.frame(x = c(round(runif(round(number * 0.35), 4, 18), 0),
                                   round(runif(round(number * 0.20), 5, 17), 0),
                                   round(runif(round(number * 0.17), 6, 16), 0),
                                   round(runif(round(number * 0.13), 7, 15), 0),
                                   round(runif(round(number * 0.10), 8, 14), 0),
                                   round(runif(round(number * 0.05), 10, 12), 0)))
even_more_data$y <- c(round(runif(round(number * 0.35), 4, 6), 0),
                      round(runif(round(number * 0.20), 7, 8), 0),
                      round(runif(round(number * 0.17), 9, 10), 0),
                      round(runif(round(number * 0.13), 11, 12), 0),
                      round(runif(round(number * 0.10), 13, 14), 0),
                      round(runif(round(number * 0.05), 15, 17), 0))
even_more_data$color <- c(round(runif(total, 1, 4), 0))


# Perform analysis:
analysis <- ggplot() + 
  geom_tile(data = some_data, aes(x = important_x_var, y = important_y_var, fill = color)) + 
  geom_point(data = even_more_data, aes(x = x, y = y, alpha = color), colour = "lightgoldenrodyellow", shape = 16) +
  geom_point(data = more_data, aes(x = x, y = y, colour = color, size = size), shape = 16) +
  annotate("text", x = 11, y = 20, label = "Very Merry Results", size = 11) +
  scale_fill_identity() + 
  theme_bw() +
  scale_x_continuous(breaks = NULL) + 
  scale_y_continuous(breaks = NULL) +
  labs(x = "", y = "") + theme(legend.position = "none")


# Results:
analysis


########################################################################################################################
########################################################################################################################
##                                                          END                                                       ##
########################################################################################################################
########################################################################################################################