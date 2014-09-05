# 1. Create a vector that contains 20 numbers. 
vec.1 <- c(7, 9, 25, 7, 8, 21, 15, 7, 15, 25, 21, 9, 36, 14, 15, 7, 9, 5, 3, 1)
# 2. Use R to convert the vector from question 1 into a character vector.
nchar(vec.1)
# 3. Use R to convert the vector from question 1 into a vecotr of factors.
as.factor(vec.1)
# 4. Use R to show how many levels the vector in the previous question has. 
length(levels(as.factor(vec.1)))
# 5. Use R tro create a vectr that takes the vector from question one and
#performs on it the formula 3x^2 - 4x +1.
3*(vec.1)^2 - 4*(vec.1) + 1
# 6. Create a named list. That is, create a list with several elements that
# are each able to be referenced by name.
list.1 <- list(36, 7, "Beckett", "Blue")
names(list.1) <- c("Age", "Lucky Number", "Son Name", "Favorite Color")
names(list.1)
list.1
# 7. Create a data frame with four columns - one each character, factor
# (with three levels), numeric, and date. your data frame should have at
# least 10 observations (rows). 
Character <- c("Jeff", "Bob", "Daniel", "Maurice", "Becky", "Brandon",
               "Lauren", "Heather", "Nicole", "Beckett")
Factor <- as.factor(c("Friend", "Friend", "Work", "Work", "Work", "Work",
                      "Family", "Family", "Work", "Family"))
Numeric <- c(35, 50, 30, 25, 60, 35, 30, 40, 30, 1)
Date <- as.Date(c("2014-06-28", "2014-01-15", "2014-10-08", "2014-4-10", 
                  "2014-05-02", "2014-03-17", "2014-12-25", "2014-2-14", 
                  "2014-07-04", "2014-01-01"))
Data.Frame.1 <- data.frame(Character, Factor, Numeric, Date)
Data.Frame.1
# 8. Illustrate how to add a row with a value for the factor column that 
# isn't already in the list of levels. 
levels(Factor) <- c("Friend", "Work", "Family", "Enemy")
new.Row <- data.frame(Character = "Heath", Factor = "Enemy", Numeric = 35, 
                      Date = "2014-5-30")
Data.Frame.1 <- rbind(Data.Frame.1, new.Row)
Data.Frame.1
# 9. Show the code that would read in a CSV file called temperatures.csv from
# the current working directory. 
Temps <- read.table(file = "temperatures.csv", header = TRUE, sep = ",")
# 10. Show the code that would read in a TSV(tab seperated) file called 
# measurements.txt from a directory other than the working directory on your
# local machine. 
Meas.Ments <- read.table(file = "C:\Users\KJDoles\Documents\measurements.txt", 
                         header = TRUE, sep = "\t")
# 11. Show the code that will read in a delimited file with the pipe seperator 
# (the "|" symbol) from the website location. 
Web.Data <- read.table(file = "http//data.cuny.edu/DMAA/datasets/quiz_01.dat", 
                       header = TRUE, sep = "|")