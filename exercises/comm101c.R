library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!
okabe_ito <- c("#E69F00", "#56EBE9", "#009E73", "#F0E442", "#0072B2")

ggplot(penguins, aes(x = island, y= body_mass_g, fill = species)) + geom_boxplot() + labs(x = "Island", y = "Body Mass (g)") + geom_boxplot(alpha=0.3) + theme(legend.position="none") + scale_fill_brewer(palette = "BuPu") + theme_bw()

  ggplot(penguins, aes(x=island, y=body_mass_g, fill=species)) +
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none") +
  scale_fill_brewer(palette="BuPu")

