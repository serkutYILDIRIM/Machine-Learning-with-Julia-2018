clearconsole()
using Plots, Knet

predict(w,x) = w[1]*x .+ w[2]
J(w,x,y) = mean(abs2,y-predict(w,x))
dJ = grad(J)

include(Knet.dir("data","housing.jl"))
(xtrn, ytrn, xtst, ytst) = housing()

n,m = size(xtrn)
w = Any[ 0.1*randn(1,n), 0.1*randn(1,1) ]
mitr = 100
Jall = zeros(mitr,1)
for t=1:mitr
    Jall[t,1] = J(w,xtrn,ytrn)
    w = w - 0.1 * dJ(w,xtrn,ytrn)
    println(Jall[t,1])
end
p = plot(Jall,title="Data")
display(p)
