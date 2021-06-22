using Plots
clearconsole()
cd(Base.source_dir())   # bu dosya konumuna git
data = readdlm("data.txt")
x = data[:,1]
y = data[:,2]
p = plot(x,y,seriestype=:scatter,title="Data")
display(p)
