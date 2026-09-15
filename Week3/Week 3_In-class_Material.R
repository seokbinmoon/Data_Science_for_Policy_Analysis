library(nycflights23) 
library(tidyverse)
library(moderndive)

ggplot(data = envoy_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_point()

ggplot(data = envoy_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_point(alpha = 0.2)

ggplot(data = envoy_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_jitter(width = 30, height = 30)

ggplot(data = early_january_2023_weather, mapping = aes(x = time_hour, y = wind_speed)) +
  geom_line()

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram()

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(color = "white")

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(color = "white", fill = "steelblue")

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(bins = 20, color = "white")

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(binwidth = 5, color = "white")

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(binwidth = 5, color = "white") +
  facet_wrap(~ month)  # if I want to add multiple variables, use '+': facet_wrap(~month + origin)

ggplot(data = weather, mapping = aes(x = wind_speed)) +
  geom_histogram(binwidth = 5, color = "white") +
  facet_wrap(~ month, nrow = 4)

ggplot(data = weather, mapping = aes(x = month, y = wind_speed)) +
  geom_boxplot()

ggplot(data = weather, mapping = aes(x = factor(month), y = wind_speed)) +  
  # factor(month) converts a numeric variable into a categorical variable
  geom_boxplot()

ggplot(data = flights, mapping = aes(x = carrier)) +
  geom_bar()

ggplot(data = flights, mapping = aes(x = carrier, fill = origin)) +
  geom_bar()

ggplot(data = flights, mapping = aes(x = carrier, color = origin)) +
  geom_bar()

ggplot(data = flights, mapping = aes(x = carrier, fill = origin)) +
  geom_bar(position = "dodge")

ggplot(data = flights, mapping = aes(x = carrier)) +
  geom_bar() +
  facet_wrap(~ origin, ncol = 1)
