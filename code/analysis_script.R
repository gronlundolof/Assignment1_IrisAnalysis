# Load the tidyverse library
library(tidyverse)

# Load and save iris dataframe.
data(iris)
readr::write_csv(iris, "data/iris.csv")

# Exploring Data
summary(iris)
head(iris)
str(iris)

# Select all flower data with petal length greater than 1.5 and save data frame.
df <- filter(iris, Petal.Length > 1.5)
readr::write_csv(df, "results/df.csv")

# Create plot of petal dimensions by species and save in figures folder. 
ggplot(df, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point() +
  labs(
    title = "Petal dimensions by species",
    subtitle = "Iris dataset petal lenght above 1.5",
    x = "Petal length",
    y = "Petal width" ) + 
  theme_classic()
ggsave("figures/iris_plot.png")