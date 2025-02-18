library(ggplot2)
library(palmerpenguins)

ggplot(penguins, aes(x = body_mass_g)) + geom_histogram()

ggplot(penguins, aes(x = body_mass_g, y= species)) + geom_boxplot()

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_point()

ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, color = species)) + geom_point()
