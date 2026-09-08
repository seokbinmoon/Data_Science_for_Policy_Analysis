## Spring 2026 Week 2 In-Class Exercise
## Instructor: Youngsung Kim (Associate Professor, HUFS)
## Author: Seokbin Moon
## Date: 9/8/2026

### PART 1 ###

# Calculate the sum of 4 and 10 below
4 + 10

# Assign the value 24 to x. 
# Hint: You need to use <- to assign a value to a variable
x <- 24

# Assign the value x-squared to y. 
# Hint: You need to use ^ to calculate a squared value.
y <- x^2

# Check that y is equivalent to x-squared. 
# Hint: You need to use == , not =
y == x^2

# Create a numeric, character, and logical variable, then check their classes using the class() function. 
# Raise your hand if you do not know the meaning of a numeric, character, or logical variable.
SM_numeric <- 1227
class(SM_numeric)

SM_character <- "Seokbin Moon"
class(SM_character)

SM_logical <- (1227+1227==1)|(1227*0==0)
class(SM_logical)

### PART 2 ###

# This vector has the average high temperatures in Fort Collins for each month. Please run the line below.
temperature_fc <- c(44, 47, 55, 62, 71, 80, 87, 84, 76, 64, 51, 43)

# Create a vector called "months" with elements Jan-Dec. 
# Hint: You need to use the c() function to create the vector.
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Assign the names of the months to the "temperature_fc" vector. 
# Hint: You need to use names().
names(temperature_fc) <- months  
temperature_fc
# Calcuate and print the mean temperature in Fort Collins over the year using print(). 
# Hint: You can calculate the mean temperature using the mean() function.
print(mean(temperature_fc))
  
# Create a logical vector called "above_freezing" that returns TRUE if the temperature of a month is above 32 degrees, FALSE otherwise.
# Print above_freezing WITHOUT using print()
above_freezing <- temperature_fc > 32
print(above_freezing)

# This vector has the average high temperatures in Atalanta each month
temperature_atlanta <- c(52, 57, 65, 73, 80, 87, 89, 88, 82, 73, 63, 55)

# Assign the names of the months to the "temperature_atlanta" vector
names(temperature_atlanta) <- months
temperature_atlanta
# Generate a logical vector called "atlanta_warmer" that returns TRUE if Atlanta was warmer than Fort Collins on a given month
# Print vector atlanta_warmer using print()
atlanta_warmer <- temperature_atlanta > temperature_fc
print(atlanta_warmer)

# Create a vector called "temperature_diff" that shows a difference in temperature between Atlanta and Fort Collins by month
# Print "temperature_diff"
temperature_diff <- temperature_atlanta - temperature_fc
temperature_diff
  
# Define a variable called "temperature_march" that pulls the March value out of the temperature_diff variable
# Hint: We grab a element of a vector using [].
temperature_march <- temperature_diff["Mar"]
temperature_march

### PART 3 ###

# Load the tidyverse and nycflights23 libraries using library(tidyverse) and library(nycflights23)
library(tidyverse)
library(nycflights23)

# Explore the flights data frame using str(flights) and glimpse(flights). 
# Which one do you believe provides better information?
str(flights)
glimpse(flights)

# check the classes of the variables carrier and flight using the class() function.
# Hint: Since carrier and flight are variables, not data frames, you need to use $ operator.
class(flights$carrier)
class(flights$flight)
  