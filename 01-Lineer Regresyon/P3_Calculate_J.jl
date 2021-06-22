using Plots
clearconsole()
data = readdlm("data.txt")
x = data[:,1]
y = data[:,2]
#display(plot(x,y,seriestype=:scatter,title="Data"))

predict(w,x) = w[1]*x + w[2]

w = [0 0;]
h = predict(w,x)

#display(plot(x,[y h],seriestype=:scatter,title="Data"))

#J(w,x,y) = mean(abs2,y-predict(w,x))
J(w,x,y) = mean((y-predict(w,x)).^2)

println(J(w,x,y))
