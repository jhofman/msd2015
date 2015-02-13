# script to play with regression.
# borrows from flow of chapter 6 of 'machine learning for hackers'

# clear memory
rm(list=ls())

# let's make us some fake data.

## x
x <- seq(-10, 10, by = 0.01)
## y
y <- x ^ 2 + rnorm(length(x), 0, 5)

# plot it
plot(x,y)
# make it fancy
library(ggplot2)
ggplot(data.frame(X = x, Y = y), aes(x = X, y = Y)) +
  geom_point() +
# even fancier, please
ggplot(data.frame(X = x, Y = y), aes(x = X, y = Y)) +
  geom_point() +
  geom_smooth(se = FALSE)

# define a variable for x^2
x.2 <- x ^ 2

# plot y against it.
plot(x.2,y)
# make it fancier
ggplot(data.frame(XSquared = x.2, Y = y), aes(x = XSquared, y = Y)) +
  geom_point() 
# now makeit fancy with a smooth cuve
ggplot(data.frame(XSquared = x.2, Y = y), aes(x = XSquared, y = Y)) +
  geom_point() 
  geom_smooth(se = FALSE)
# now make it fancy with a smooth curve learned from lm
ggplot(data.frame(XSquared = x.2, Y = y), aes(x = XSquared, y = Y)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE)


# NOW LET'S START US SOME MODELING:

# fit to x^1
lm.out<-lm(y~x)
lm.out$coefficients

# what there are 2 coeffs? yes there's constant by default. 
# we can make it explicit too:
lm.out<-lm(y~1+x)
lm.out$coefficients

# what of polynom?
lm.out<-lm(y~x.2)
lm.out$coefficients

# whoa, what of both?
lm.out<-lm(y~x.2+x)
lm.out$coefficients

# convince yourself this makes sense.

## MODEL SIN CURVE
x <- seq(0, 1, by = 0.01)
y <- sin(2 * pi * x) + rnorm(length(x), 0, 0.1)

# let's use data frames to make the whole of the polynomial:
df <- data.frame(X = x, Y = y)
df <- transform(df, X2 = X ^ 2)
df <- transform(df, X3 = X ^ 3)
df <- transform(df, X4 = X ^ 4)
df <- transform(df, X5 = X ^ 5)
df <- transform(df, X6 = X ^ 6)
df <- transform(df, X7 = X ^ 7)
df <- transform(df, X8 = X ^ 8)
df <- transform(df, X9 = X ^ 9)
df <- transform(df, X10 = X ^ 10)
df <- transform(df, X11 = X ^ 11)
df <- transform(df, X12 = X ^ 12)
df <- transform(df, X13 = X ^ 13)
df <- transform(df, X14 = X ^ 14)
df <- transform(df, X15 = X ^ 15)

# fit to little polynomial
summary(lm(Y ~ X + X2 + X3, data = df))

# fit to big polynomial
summary(
  lm(
    Y ~
      X + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 + X13 + X14,
  data = df)
)

# use "poly" to get orthogonal polynomials
summary(lm(Y ~ poly(X, degree = 14), data = df))
