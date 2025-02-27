library(marinecs100b)
library(ggplot2)


# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
# line graph, making it very clear its one var

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
# making clear which var is which, appropate scales for diff values

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.

?ggplot()
ggplot(woa_sal, aes(x = island, y= body_mass_g, fill = species)) + geom_boxplot() + labs(x = "Island", y = "Body Mass (g)") + geom_boxplot(alpha=0.3) + theme(legend.position="none") + scale_fill_brewer(palette = "BuPu") + theme_bw()
View(woa_sal)

salinity <- function(ocean) {
  count = 0
  amount = 0
  for(i in 1:length(woa_sal[, 3])) {
    if (woa_sal[i, 4] == ocean) {
      count = count + 1
      amount = amount + woa_long[i, 3]
    }
  }
  print(count)
  print(amount)
  return(amount/count)
}
salinity("Indian Ocean")

?ggsave()

ggplot(woa_sal, aes(x = salinity)) + geom_histogram()
ggsave("comm101p3.png")

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.
ggplot(woa_sal, aes(x = ocean, y= salinity)) + geom_boxplot()


# P5 Interpret your figures from P3 and P4. What patterns do you notice?
# They both take into account the number of instances. They don't easily dissociate between
  #individual points, no color

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.

# We could probably change colors, numbers, number of points

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x = latitude, y= salinity, fill = ocean)) + geom_boxplot()

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.

ggplot(woa_sal, aes(x = salinity, y= latitude, fill = ocean)) + geom_boxplot() + theme_bw() + labs(x = "Latitude", y = "Salinity (M)") + scale_fill_brewer(palette = "BuPu") +
  theme(legend.position = c(0.2, 0.2))

