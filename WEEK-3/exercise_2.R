##Part-1
X <- 140
mu <- 120
sigma <- 15

z <- (X - mu) / sigma
z
pnorm(z)  
1 - pnorm(z)

##Part-2
X <- 180
mu <- 200
sigma <- 30

z <- (X - mu) / sigma
z
pnorm(z) 

##Part-3
mu <- 3400
sigma <- 500
z1 <- (3000 - mu) / sigma
z2 <- (4000 - mu) / sigma
z1; z2
pnorm(z2) - pnorm(z1)

##Part-4
z90 <- qnorm(0.90)              
bp_cutoff <- 120 + z90*15         
pnorm(bp_cutoff, 120, 15)          
z05 <- qnorm(0.05)             
chol_cutoff <- 200 + z05*30      
pnorm(chol_cutoff, 200, 30)        
round(c(z90=z90, bp_cutoff=bp_cutoff, z05=z05, chol_cutoff=chol_cutoff), 4)

