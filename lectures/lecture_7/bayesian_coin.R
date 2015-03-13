# stolen from http://bayesianbiologist.com/2011/09/10/visualizing-bayesian-updating/
sim_bayes<-function(p=0.5,N=10,y_lim=15)
{
  success<-0
  curve(dbeta(x,1,1),xlim=c(0,1),ylim=c(0,y_lim),xlab='p',ylab='Posterior Density',lty=2)
  legend('topright',legend=c('Prior','Updated Posteriors','Final Posterior'),lty=c(2,1,1),col=c('black','black','red'))
  for(i in 1:N)
  {
    if(runif(1,0,1)<=p)
      success<-success+1
    
    curve(dbeta(x,success+1,(i-success)+1),add=TRUE)
    print(paste(success,"successes and ",i-success," failures"))
  }
  curve(dbeta(x,success+1,(i-success)+1),add=TRUE,col='red',lwd=1.5)
}

sim_bayes(p=0.6,N=900)