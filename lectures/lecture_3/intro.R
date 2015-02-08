#
# introduction to data manipulation in R
#

# cheatsheets and reference cards:
#   http://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf
#   http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf
#   http://had.co.nz/stat480/r/
#   http://www.rstudio.com/wp-content/uploads/2015/01/data-wrangling-cheatsheet.pdf

library(dplyr)
library(ggplot2)

# use the first 6 rows of the iris dataset as a toy dataframe
df <- head(iris)

# look at the fifth row
df[5, ]

# look at the second column, by index and by name
df[ , 2]
df[ , "Sepal.Width"]
df$Sepal.Width

# find rows with a sepal length of 5 or larger
df[c(T,F,F,F,T,T), ]
# ugly
df[df$Sepal.Length >= 5, ]
# nicer
# note: the second entry of subset is a logical vector
subset(df, Sepal.Length >= 5)
# filter, AND-ing on multiple conditions
filter(df, Sepal.Length >= 5, Petal.Length <= 1.4)

# create a new column by adding the sepal and petal widths
# ugly
df$total_width <- df$Sepal.Width + df$Petal.Width
# nicer
# note: mutate always gives back same number of rows
mutate(df, total_width=Sepal.Width + Petal.Width)

# compute the average sepal length
mean(df$Sepal.Length)
# note: summarize gives back one row
summarize(df, mean_sepal_length=mean(Sepal.Length))

# compute summary statistics for each column
summary(df)
str(df)

# note: we're using the full iris dataframe (instead of the first 6 rows) from here on

# use grep to find indices of the column names that contain 'Length'
grep('Length', names(iris))
# same, but return the values instead of indices
grep('Length', names(iris), value=T)
# same, but return a logical vector when there's a match
grepl('Length', names(iris))

# find all rows where the species matches the pattern 'to'
filter(iris, grepl('to', Species))

# same as above, but also require sepal length to be at least 5
# note: be careful to always use single '&' and '|' here, not double
filter(iris, grepl('to', Species), Sepal.Length >= 5)

# get a list of all unique species
unique(iris$Species)

# count the number of rows for each species
table(iris$Species)

# use dplyr to do the same, returning a dataframe (instead of table)
iris %>%
  group_by(Species) %>%
  summarize(num_rows=n())

# use dplyr to group by species and compute the average and standard deviation of sepal length for each species
iris %>%
  group_by(Species) %>%
  summarize(mean_sepal_length=mean(Sepal.Length),
            sd_sepal_length=sd(Sepal.Length))


# look at the built-in diamonds dataset
head(diamonds)

# plot the number of carats vs. price, split by diamond color
qplot(x=price, y=carat, data=diamonds, facets = . ~ color)

# see more plot examples here
# http://had.co.nz/stat480/r/graphics.html
