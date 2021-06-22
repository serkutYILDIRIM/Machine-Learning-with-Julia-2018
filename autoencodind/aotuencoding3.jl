using Plots
clearconsole()
cd(Base.source_dir())   # bu dosya konumuna git

data = readdlm("data.txt")

p=0.05;
pj=0.00001:0.1:1

#for i=0:0.1:5
#h=i*log(i/j)+(1-i)*log((1-i)/(1-j))
h=p*log(p/pj)+(1-p)*log((1-p)/(1-pj))

plot(h)
