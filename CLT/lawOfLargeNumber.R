# Law of large number
# Test on Uniform distribution
uniform.10 <- rep(0,10)
uniform.100 <- rep(0,10^2)
uniform.1000 <- rep(0,10^3)

for(i in 1:10^5)
{
  x.samp.10 <- runif(10,2,4)
  uniform.10[i] <-mean(x.samp.10)
  
  x.samp.100 <- runif(100,2,4)
  uniform.100[i] <-mean(x.samp.100)
  
  x.samp.1000 <- runif(1000,2,4)
  uniform.1000[i] <-mean(x.samp.1000)
  
}
mean(uniform.10)
mean(uniform.100)
mean(uniform.1000)
# Test result
# Block Ctrl+Shift+C
# > mean(uniform.10)
# [1] 2.999501
# > mean(uniform.100)
# [1] 3.000032
# > mean(uniform.1000)
# [1] 3.000058

var(uniform.10)
var(uniform.100)
var(uniform.1000)
# Test result
# > var(uniform.10)
# [1] 0.03351723
# > var(uniform.100)
# [1] 0.003343146
# > var(uniform.1000)
# [1] 0.0003319267

# plot
n <- floor(runif(1000,2,4))
t <- table(n)
barplot(t)
plot(t)

#Lab 3
