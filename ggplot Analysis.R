install.packages("ggplot2")
install.packages(c("ggplot2", "gcookbook", "MASS", "dplyr"))
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)

install.packages("palmerpenguins")
install.packages("ggthemes")
library(palmerpenguins)
library(ggthemes)
library(ggplot2)

penguins
glimpse(penguins)

ggplot(data = penguins)
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point()

#Added with colour
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm")

#Giving title for the plot and output of plot 
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()


#Finding how many rows and columns are there in library
dim(penguins)
nrow(penguins)
ncol(penguins)

#finding the description of data in library 
?penguins
#bill_depth_mm
#a number denoting bill depth (millimeters)

ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species)
) +
  geom_point()

#without grid and box at background means it will remove the grid 
ggplot(penguins, aes(x = species, y = bill_depth_mm)) + 
  geom_boxplot() +
  geom_jitter(alpha = 0.3, color = "blue") + 
  theme_minimal()

#with grid and box at background 
ggplot(penguins, aes(x = species, y = bill_depth_mm)) + 
  geom_boxplot() +
  geom_jitter(alpha = 0.3, color = "blue")

