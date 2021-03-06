using Knet
using Plots
clearconsole()
cd(Base.source_dir())   # bu dosya konumuna git
data = readdlm("data1.txt")
include(Knet.dir("data",data))
xtrn,ytrn,xtst,ytst = mnist()
dtst = minibatch(xtst,ytst,100)
dtrn = minibatch(xtrn,ytrn,100)

predict(w,x) = w[1]*mat(x) .+ w[2]	  # mat converts x to 2D
loss(w,x,ygold) = nll(predict(w,x),ygold) # nll computes negative log likelihood
lossgradient = grad(loss)                 # grad returns gradient function
wsoft=[ 0.1*randn(10,784), zeros(10,1) ]  # initial weights and bias

function train!(w, data; lr=.1)
    for (x,y) in data
        dw = lossgradient(w, x, y)
        for i in 1:length(w)
            w[i] -= lr * dw[i]
        end
    end
    return w

end
