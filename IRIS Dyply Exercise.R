


# Exercises for dplyr

library(dplyr)
?iris
names(iris)

iris
data(iris)
is.data.frame(iris)

di =as.data.frame(iris)
di
ncol(di)
nrow(di)
colnames(di)
# Exercise 1
# Select the first three columns of the iris dataset using their column names. HINT: Use select().
#
select(di, 1:3)



# Exercise 2
# Select all the columns of the iris dataset except "Petal Width". HINT: Use "-".

select(di, -Petal.Width)
  

# Exercise 3
# Select all columns of the iris dataset that start with the character string "P".
select(di, starts_with('P'))



# Exercise 4
# Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.

filter(di,Sepal.Length >= 4.6 & Petal.Width >= 0.5 )

# Exercise 5
# Pipe the iris data frame to the function that will select two columns (Sepal.Width and Sepal.Length). HINT: Use pipe operator.
di %>%
  select(Sepal.Width , Sepal.Length)


# Exercise 6
# Arrange rows by a particular column, such as the Sepal.Width. HINT: Use arrange().
di %>%
arrange(di,Sepal.Width)

# Exercise 7
# Select three columns from iris, arrange the rows by Sepal.Length, then arrange the rows by Sepal.Width.

di1 = di
  select(di, 1:3)
  arrange(di, Sepal.Length)
  arrange(di, Sepal.Width)

# Exercise 8
# Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. HINT: Use mutate().
mutate(di, proportion = Sepal.Length/Sepal.Width)
di



# Exercise 9
# Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value "avg_slength". HINT: Use summarize().
avg_slength=summarize(di, mean(Sepal.Length))
avg_slength


# Exercise 10
# Split the iris data frame by the Sepal.Length, then ask for the same summary statistics as above. HINT: Use group_by().
group11 = group_by(di,Sepal.Length)

statstab=summarize(group11, mean(Sepal.Length))
statstab

