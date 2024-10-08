library(tidyverse)
library(ggplot2)
#' In R, variables are used to store data that you can use and manipulate in your scripts and functions. Here’s a basic rundown on how to work with variables in R:
#'   
#' ### 1. Creating Variables
#'   
#'   To create a variable in R, you use the assignment operator `<-` (though `=` is also valid in most cases). For example:
#'   
xx <- 10         # Assigns the value 10 to the variable x
xx
name <- "John"  # Assigns the string "John" to the variable name
name
#' ### 2. Variable Naming Rules
#' 
#' - **Names must start with a letter** (a-z, A-Z).
#' - **Names can include letters, numbers, and dots (.)** but cannot start with a number.
#' - **Names are case-sensitive**, so `var` and `Var` would be considered different variables.
#' 
#' ### 3. Basic Data Types
#' 
#' Variables in R can store different types of data:
#'   
#'   - **Numeric**: `x <- 10`
#' - **Integer**: `y <- 10L` (the `L` denotes an integer)
#' - **Character**: `name <- "Alice"`
#' - **Logical**: `flag <- TRUE`
#' - **Complex**: `z <- 2 + 3i`
#' 
#' ### 4. Data Structures
#' 
#' Variables can also store more complex data structures:
#'   
#'   - **Vectors**: `v <- c(1, 2, 3, 4)`
#' - **Matrices**: `m <- matrix(1:6, nrow=2)`
#' - **Data Frames**: `df <- data.frame(Name=c("Alice", "Bob"), Age=c(25, 30))`
#' - **Lists**: `lst <- list(Name="Alice", Age=25, Scores=c(90, 85, 88))`
#' 
#' ### 5. Accessing and Modifying Variables
#' 
#' To access or modify variables, you simply refer to them by their name. For example:
#'   
xx <- xx + 5    # xx is now 15
xx 
yy <- xx   # new object yy copy of xx created 
yy 
#'
#'
#'
#' ### 6. Removing Variables
#' 
#' If you need to remove a variable, use the `rm()` function:
#'   

rm(yy)

#' 
#' ### 7. Checking Variable Types
#' 
#' You can check the type of a variable using functions like `class()`, `typeof()`, and `is.*()`:
#   

class(name)  # Returns "character"
typeof(xx)    # Returns "double"
is.numeric(xx) # Returns TRUE if x is numeric
#' ### 8. Special Variables
#' 
#' - **`NA`**: Represents missing values.
#' - **`NULL`**: Represents the absence of a value or an empty object.
#' 
#' ### 9. Environment
#' 
#' Variables are stored in environments, with the global environment being where your variables are usually stored when you work interactively.
#' 

ls()          # Lists all variables in the current environment
 
#' ### 10. how to disect an unfamilair expression 
L3 <- LETTERS[1:3]
L3
LETTERS
1:3
#1 2 3 4 5
#1:2:3:4:5
1:5
1:23
0:100
-5:23
10:-1
A-D
#LETTER (A:B) Error in LETTER(A:B) : could not find function "LETTER"
LETTERS[1:3]
LETTERS[25:27]
LETTERS[23-26]
LETTERS[23:26]
23-26
LETTERS[-3]
LETTERS[27]
LETTERS[3]
LETTERS[3:5]
LETTERS[-(3:5)]
#WHENEVER THERE IS A SQUT BRACKET IT IS EXPRESSING THE DIFFEREHT VARIABLES ,
#SUBSETTINGS FOR EXAMPLE 1-3 , A-B. BASICALLY ITS THE EXPRESSION EXAMPLE: L3 IS
#THE NMAE OF THE OBJECT AND 1:3 0R 1:100 IS THE EXPRESSION. BUT IF YIU WRITE 1-3
#(IT IS MINUES 3)
char <- sample(L3, 10, replace = TRUE)
char
# CHAR IS THE OBJECT SAMPLE IS THE NAME OF THE FUNCTION ADN REPLACE IS THE NAME.
#IN THE ABOVE THE FIRST ARGUMENT IS L3 , SECOND IS 10 AND THE THIRD IS TRUE
5+3
5:3

#' # dataframes
#' 
#' how to tell the number of rows and columns 
dim(cars)
NROW(cars)
NCOL(cars)
#' how to selet particular records in data frame
names(mpg)
summary(mpg)
#'### selecting rows of interest
subset(mpg, year ==2008 & cyl == 4 & model == 'a4')
subset(mpg, year ==2008 & cyl != 4 & model == 'a4')
subset(mpg, year ==2008 & cyl == 4 & model != 'a4')
subset(mpg, year ==2008 | cyl == 4 | model != 'a4')
flights_sml <- select(flights,arr_delay,dep_delay,distance,air_time)
#' ### selecting columns of interest
#' ### selecting mutate 
mutate(flights_sml,
    gain = 2*distance ,
      speed = distance / air_time * 60)

#' ### selecting transmute 
transmute (flights_sml, dep_delay ,
 gain = arr_delay - dep_delay,test =10,
 speed = distance / air_time * 60) 
#' ### summarize the data
summarize(flights,dep_delay= mean (dep_delay, na.rm=T) , arr_delay= mean (arr_delay, na.rm=T)) 
