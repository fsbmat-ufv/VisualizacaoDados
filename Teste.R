getwd()
read.csv

library(tidyverse)

ggplot(companhia, aes(y = salario)) +
  geom_boxplot(fill = cor_azul, alpha = 0.5, width = 0.4) +
  labs(
    title = "Boxplot dos salários",
    y = "Salário (SM)", x = NULL
  ) +
  theme
