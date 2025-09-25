library(tidyverse)
library(nycflights13)

flights_1 <- flights |>
  group_by(month) |>
  mutate(avg_monthly_delay =mean(dep_delay, na.rm = TRUE)) |>
  ungroup()

flights_2 <- flights_1 |>mutate(avg_dep_time= mean(dep_time, na.rm = TRUE))

flights_3 <- flights |>
  mutate(avg_dep_time = mean(dep_time, na.rm = TRUE))
