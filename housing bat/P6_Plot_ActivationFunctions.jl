using Plots
clearconsole()
cd(Base.source_dir())   # bu dosya konumuna git
x=-5:0.1:5
ySigmo = 1 ./ (1+exp.(-x))
yTanj = (2 ./ (1+exp.(-2x)) - 1)
#yRelu =
p = plot(x,[ySigmo yTanj],seriestype=:scatter,title="Data")
display(p)
