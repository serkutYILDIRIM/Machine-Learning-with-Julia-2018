clearconsole()
using Plots, Knet

predict(w,x) = w[1]*x .+ w[2]
J(w,x,y) = mean(abs2,y-predict(w,x))
dJ = grad(J)

function train(w, dtrn; lr=.01, epochs=10)
    Jall = []
    for epoch=1:epochs
        for (x,y) in dtrn
            w = w - lr * dJ(w,x,y)
            push!(Jall,J(w,x,y))
            println(size(Jall,1),". updating")
        end
    end
    return Jall
end

include(Knet.dir("data","housing.jl"))
(xtrn, ytrn, xtst, ytst) = housing()
global dtrn = minibatch(xtrn, ytrn, 100; xtype=Array{Float32})

n,m = size(xtrn)
w = Any[ 0.1*randn(1,n), 0.1*randn(1,1) ]
Jall = train(w, dtrn; lr=.05, epochs=10)
p = plot(Jall,title="Data")
display(p)
