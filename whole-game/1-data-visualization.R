install.packages("tidyverse")

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

# take a look at the data set

str(penguins)

# 1.2.5 Exercise 8: Recreate the visualization.

ggplot(
  penguins,
  aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = bill_depth_mm)) +
  geom_smooth()

# or

penguins |>
ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
geom_point(aes(color = bill_depth_mm)) +
geom_smooth()
