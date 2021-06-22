using Plots
clearconsole()
cd(Base.source_dir())   # bu dosya konumuna git

data = readdlm("data.txt")
x = data[:,1]
y = data[:,2]

display(plot(x,y,seriestype=:scatter,title="Data"))

predict(w,x) = w[1]*x + w[2]

w = [10 0.3;]
h = predict(w,x)

display(plot(x,[y h],seriestype=:scatter,title="Data"))
