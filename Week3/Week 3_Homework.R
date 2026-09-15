## Data Science for Policy Analysis (Fall 2026) Homework 2
## Author: Seokbin Moon
## Due Date: 9/22/2026


# Load the tidyverse and nycflights23 libraries using library(tidyverse) and library(nycflights23).
library(tidyverse)
library(nycflights23)

### Part 1: 5NG#1 - Scatterplots
## Explore the flights data frame using glimpse(flights).
glimpse(flights)

## The code below creates a data frame called "alaska_flights" that only include Alaska Airlines flights leaving NYC in 2023 by only selecting the rows where carrier is equal to "AS" from the flights data frame. 
## Please modify the code so that it creates a data frame called "frontier_flights" that only include Frontier Airlines flights leaving NYC in 2023.
## Hint: "F9" indicates the Frontier Airlines in the variable "carrier".
frontier_flights <- flights %>% 
  filter(carrier == "F9")

## Create a scatter plot that shows the relationship air_time (i.e., x variable) and arr_delay (i.e., y variable) using the frontier_flights data frame you created above.
ggplot(data = frontier_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_point()

## Same as above, but please change the transparency into alpha = 0.2.
ggplot(data = frontier_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_point(alpha = 0.2)

## Same as the first scatter plot in line 20, but please jitter the points by setting width and height at 30, respectively.
ggplot(data = frontier_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_jitter(width = 30, height = 30)


### Part2 : 5NG#2: Linegraphs
## Explore the weather data frame using glimpse(weather).
glimpse(weather)

## The code below creates a data frame called "LGA_weather" that only include flights leaving the LaGuardia airport (LGA) in 2023 by only selecting the rows where origin is equal to "LGA" from the weather data frame. 
## Please modify the code so that it creates a data frame called "EWR_weather" that only include flights leaving the Newark (EWR) airport in 2023.
## Hint: "EWR" indicates the Newark airport in the variable "origin". 
EWR_weather <- weather %>%  
  filter(origin == "EWR")

## Create a linegraph that shows the relationship between time_hour (x variable) and temp (y variable) using the EWR data frame you created above.
ggplot(data = EWR_weather, mapping = aes(x = time_hour, y = temp)) +
  geom_line()



### 5NG#3: Histograms
## Explore the "weather" data frame using glimpse(weather).
glimpse(weather)

## Create a histogram of the variable called "pressure" in the "weather" data frame
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram()

## Same as line 53, but add gray vertical borders
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram(color = 'gray')

## Same as line 57, but change the number of bins into 50
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram(bins = 50, color = 'gray')

## Same as line 57, but change the width of each bin into 10
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram(binwidth = 10, color = 'gray')

## Same as line 57, but create a "faceted" histogram of the variable called "pressure" by another variable "month"
## Hint: You need to use the facet_wrap() function.
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram(color = 'gray') +
  facet_wrap(~month)


## Same as line 69, but set the number of rows to be 6 
ggplot(data = weather, mapping = aes(x = pressure)) +
  geom_histogram(color = 'gray') +
  facet_wrap(~month, nrow = 6)


### 5NG#4: Boxplots
## Create box plots for the "pressure" variable by "month" using the "weather" data frame
## Hint: You need to create the box plots after converting the "month" variable to a factor variable using the factor() function.
ggplot(data = weather, mapping = aes(x = factor(month), y = pressure)) +
  geom_boxplot()


### 5NG#5: Barplots
## Explore the "airports" data frame using glimpse(airports).
glimpse(airports)

## Create barplots for the "tzone" variable in the "airports" data frame using geom_bar()
ggplot(data = airports, mapping = aes(x = tzone)) +
  geom_bar()

