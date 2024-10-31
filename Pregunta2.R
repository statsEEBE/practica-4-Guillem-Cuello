#Pregunta 2

#1) P(X>=13000)?  T~exp(λ)  λ = 1/10000 -> [E(T)=1/λ=10000]

#P(X>=13000) = 1 - F(13000)

1 - pexp(13000, 1/10000)

#2)

# 0.8 = F(f) = P(T<= t) t=0.8
# F^-1(0.8) = t
qexp(0.8, 1/10000)

#3)
set.seed(85)  #Ho posem pq els experiments aleatoris ens donin sempre el mateix
simulacio <- rexp(100,1/10000)
mean(simulacio)
median(simulacio)
var(simulacio)
