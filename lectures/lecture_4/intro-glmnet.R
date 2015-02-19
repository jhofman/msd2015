library(glmnet)
set.seed(1010)
n=1000;p=100
nzc=trunc(p/10)

# define x as a bunch of random data
# NB: dim(x)=1000 x 100
x=matrix(rnorm(n*p),n,p)
# make a vector of lenght nzc (=10) of random #s
beta=rnorm(nzc)
# NB: %*% is matrix mult
fx= x[,seq(nzc)] %*% beta

# regression:
# ====
eps=rnorm(n)*5
# define y
# y=drop(fx+eps)
y=fx+eps
# do cv curve and show coeffs

# L1
cvob1=cv.glmnet(x,y)
plot(cvob1)
# behold a sparse model. thanks to L1=lasso
coef(cvob1)

# L2
cvob1=cv.glmnet(x,y,alpha=0)
plot(cvob1)
# bummer.
coef(cvob1)

# classification:
# ====
# now squish fx via logit
px=exp(fx)
px=px/(1+px)
# make a "binary"/"dichotomous" random variable
ly=rbinom(n=length(px),prob=px,size=1)
cvob3a=cv.glmnet(x,ly,family="binomial",type.measure="auc")

# regularization path
plot(glmnet(x,y))
# what if L2?
plot(glmnet(x,y,alpha=0))
