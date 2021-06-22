using Plots, Knet

predict(w,x) = w[1]*x .+ w[2]
J(w,x,y) = mean(abs2,y-predict(w,x))
dJ = grad(J)

clearconsole()
k=10
w = Any[ 0.1*randn(1,1), 0.1*randn(1,1) ]
data = readdlm("data.txt")
x = data[:,1:1]'
y = data[:,2:2]'
println(J(w,x,y))
for t=1:5
    w = w - 0.0001 * dJ(w,x,y)
    println(J(w,x,y))
end
h = predict(w,x)
p = plot(x',[y;h]',seriestype=:scatter,title="Data")
display(p)
