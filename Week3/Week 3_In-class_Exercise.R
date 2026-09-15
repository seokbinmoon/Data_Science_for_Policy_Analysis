## Fall 2026 Week 3 In-Class Exercise
## Instructor: Youngsung Kim (Associate Professor, HUFS)
## Author: Seokbin Moon
## Date: 9/15/2026

# Load the tidyverse and nycflights23 libraries using library(tidyverse) and library(nycflights23)
library(tidyverse)
library(nycflights23)

### 5NG#1: Scatterplots
## Explore the flights data frame using glimpse(flights)
glimpse(flights)

## Create a data frame called "LGA_flights" that only contains the rows where origin is equal to "LGA" from the flights data frame. 
LGA_flights <- flights %>%
  filter(origin == "LGA")

## Create a scatter plot that shows the relationship air_time (i.e., x variable) and air_delay (i.e., y variable) using the LGA_flights data frame
ggplot(data = LGA_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_point()

## Same as above, but please change the transparency into alpha = 0.2
ggplot(data = LGA_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_point(alpha = 0.2)

## Same as the first scatter plot, but jitter the points by setting width and height as 30, respectively.
ggplot(data = LGA_flights, mapping = aes(x = air_time, y = arr_delay)) +
  geom_jitter(width = 30, height = 30)



### 5NG#2: Linegraphs
## Create a data frame called "short_flights" that only contains the rows where air_time is smaller than and equal to 100 from the flights data frame. 
short_flights <- flights %>%
  filter(air_time <= 100)

## Create a linegraph that shows the relationship between time_hour (x variable) and arr_delay (y variable)
ggplot(data = short_flights, mapping = aes(x = time_hour, y = arr_delay)) +
  geom_line()



### 5NG#3: Histograms
## Create a histogram of humid in the weather data frame
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram()

## Same as before, but add yellow vertical borders
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram(color = "yellow")

## Same as the second histogram, but change the number of bins into 50
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram(bins = 50, color = "yellow")

## Same as the second histogram, but change the width of each bin into 15
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram(binwidth = 15, color = "yellow")

## Same as the second graph, but create a histogram of the variable "humid" by another variable "month"
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram(color = "yellow") +
  facet_wrap(~month)

## Same as the second graph, but set the number of rows to be 4 
ggplot(data = weather, mapping = aes(x = humid)) +
  geom_histogram(color = "yellow") +
  facet_wrap(~month, nrow = 4)



### 5NG#4: Boxplots
## Create box plots for the humid variable by month
## Please create the box plots after converting month to a factor variable 
ggplot(data = weather, mapping = aes(x = factor(month), y = humid)) +  
  geom_boxplot()



### 5NG#5: Barplots
## Create barplots for the origin variable using geom_bar()
ggplot(data = flights, mapping = aes(x = origin)) +  
  geom_bar()

## Create a faceted barplot for the dest variable by another variable called origin. 
ggplot(data = flights, mapping = aes(x = dest)) +  
  geom_bar() +
  facet_wrap(~origin, ncol = 1)
