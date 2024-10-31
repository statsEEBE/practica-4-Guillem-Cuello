#Pregunta 1

#Primer identifiquem quin model és
#Despres indentifiquem els paràmetres del model (n,p,etc)
#Per últim, calculem les probabilitats i el que ens demana l'enunciat

#Model de Poisson: X~Poisson(λ) λ = 25, E(x)=λ
#P(X=20)
exp(-25)*25^20/factorial(20)
dpois(20,25) #20 és la x i 25 és la λ

#Primer pintem la Poisson:
x <- 0:40
f <- dpois(x,25)

plot(x, f, type="h", col="red")
#Quant calculem f(20) calculem la xinxeta que esta sobre el 20

#P(X<=20)? = f(0)+f(1)+...+f(20) = ppois
ppois(20, 25)

#P(18 <= X <= 22)? 
ppois(22, 25) - ppois(17, 25) #agafem les xinxetes fins a 25 i treiem les que no volem

#Pintem la distribució de Poisson F(x), és el sumatori de les f(x)
plot(x, ppois(x,25), type = "s", col="red")

#Mediana (q és de quantile)
qpois(0.5, 25)

#Primer quartil
qpois(0.25, 25)

#dpois = f(x), ppois = F(x), qpois = F^-1(x) = quartils, rpois = simulació

#Apartat a) P(T=0.033)?
0
#Apartat b) P(T>= 0.052) = P(T<=0.052) pq és continua
1-pexp(0.052, 25)

#Funció densitat
t <- seq(0,1,0.01)
plot(t, dexp(t,25), type="l", col="red")
#Distribucó
plot(t,pexp(t,25),type="l", col="red")

#Apartat c)
#rexp = simulació
rexp(2,25) #num experiments i lambda

mean(rexp(500000,25)) #mitjana dels experiments 
#En l'infinit, la mitjana dels experiments és la esperança E(x), per tant, E(x)=1/λ
1/25
